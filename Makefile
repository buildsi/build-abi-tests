# My standard compiler flags
CXXFLAGS=-g3 -fvar-tracking-assignments -gstatement-frontiers \
	-gvariable-location-views -grecord-gcc-switches -pipe -Wall \
	-Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -fexceptions \
	-Wp,-D_GLIBCXX_ASSERTIONS -fstack-protector-strong \
	-fstack-clash-protection -fcf-protection \
	-fasynchronous-unwind-tables -O2
LDFLAGS=-Wl,--no-undefined

all: underlinktest libunderlink1.so libunderlink2.so

underlinktest: underlinktest.o libunderlink1.so
	g++ $(CXXFLAGS) $(LDFLAGS) -o underlinktest underlinktest.o -L. -l underlink1

# We don't want the LDFLAGS here because this library is intentionally
# underlinked
libunderlink1.so: libunderlink1.o
	g++ $(CXXFLAGS) -fPIC -shared -o libunderlink1.so libunderlink1.o

libunderlink2.so: libunderlink2.o
	g++ $(CXXFLAGS) -fPIC -shared -o libunderlink2.so libunderlink2.o

clean:
	rm -f *~ *.o *.so underlinktest
