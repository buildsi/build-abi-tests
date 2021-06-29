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

.PHONY: clean all

all: swap-libs-audit.so

swap-libs-audit.so: swap-libs-audit.o
	g++ $(CXXFLAGS) $(LDFLAGS) -fPIC -shared -o swap-libs-audit.so swap-libs-audit.o

swap-libs-audit.o: swap-libs-audit.C
	g++ $(CXXFLAGS) -fPIC -c -o swap-libs-audit.o swap-libs-audit.C

clean:
	rm -f *~ *.so *.so
