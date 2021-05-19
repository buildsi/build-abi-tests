# Ben's standard compiler flags
CXXFLAGS=-g3 -fvar-tracking-assignments -gstatement-frontiers \
	-gvariable-location-views -grecord-gcc-switches -pipe -Wall \
	-Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -fexceptions \
	-Wp,-D_GLIBCXX_ASSERTIONS -fstack-protector-strong \
	-fstack-clash-protection -fcf-protection \
	-fasynchronous-unwind-tables -O2
CFLAGS=-g3 -fvar-tracking-assignments -gstatement-frontiers \
	-gvariable-location-views -grecord-gcc-switches -pipe -Wall \
	-Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -fexceptions \
	-Wp,-D_GLIBCXX_ASSERTIONS -fstack-protector-strong \
	-fstack-clash-protection -fcf-protection \
	-fasynchronous-unwind-tables -O2
LDFLAGS=-Wl,--no-undefined

.PHONY: all clean test run-underlinktest abicompat-underlink abicompat-backcall \
	swap-underlinked

# ------
all: underlinktest libunderlink1.so libunderlink2.so swap-libs-audit.so

swap-libs-audit.so: swap-libs-audit.o
	g++ $(CXXFLAGS) $(LDFLAGS) -fPIC -shared -o swap-libs-audit.so swap-libs-audit.o

swap-libs-audit.o: swap-libs-audit.C
	g++ $(CXXFLAGS) -fPIC -c -o swap-libs-audit.o swap-libs-audit.C

# ------ Underlinking ------
underlinktest: underlinktest.o libunderlink1.so
	gcc $(CFLAGS) $(LDFLAGS) -o underlinktest underlinktest.o -L. -l underlink1

# We don't want the LDFLAGS here because this library is intentionally
# underlinked
libunderlink1.so: libunderlink1.o
	gcc $(CFLAGS) -fPIC -shared -o libunderlink1.so libunderlink1.o

libunderlink2.so: libunderlink2.o
	gcc $(CFLAGS) -fPIC -shared -o libunderlink2.so libunderlink2.o

# ------ TESTS ------
test: run-underlinktest abicompat-underlink abicompat-backcall swap-underlinked

run-underlinktest: underlinktest
	@./underlinktest.sh

abicompat-underlink: libunderlink1.so
	@./abicompat-underlink.sh

abicompat-backcall: underlinktest libunderlink1.so libunderlink2.so
	@./abicompat-backcall.sh

swap-underlinked: underlinktest libunderlink1.so libunderlink2.so \
		swap-libs-audit.so
	@./swap-underlinked.sh

# ------ Other ------
clean:
	rm -f *~ *.o *.so underlinktest
