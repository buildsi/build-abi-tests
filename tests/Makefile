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

TESTS=underlinked swap-underlinked exception swap-exception abi2way-diff \
      abi2way-compat abi2way-compat-weak backcall swap-backcall

.PHONY: clean all test $(TESTS)

# ------
all: underlinktest libunderlink1.so libunderlink2.so use-rtti-excep \
     librttiexcep_v2.so abi2way-main1 abi2way-main2 libcall1.so libcall2.so

# ------ Underlinking ------
underlinktest: underlinktest.o libunderlink1.so
	gcc $(CFLAGS) $(LDFLAGS) -o underlinktest underlinktest.o -L. -l underlink1

# We don't want the LDFLAGS here because this library is intentionally
# underlinked
libunderlink1.so: libunderlink1.o
	gcc $(CFLAGS) -fPIC -shared -o libunderlink1.so libunderlink1.o

libunderlink2.so: libunderlink2.o
	gcc $(CFLAGS) -fPIC -shared -o libunderlink2.so libunderlink2.o

# ------ rtti-exception -----
use-rtti-excep: use-rtti-excep.o librttiexcep_v1.so
	g++ $(CFLAGS) $(LDFLAGS) -o use-rtti-excep -L. -l rttiexcep_v1 use-rtti-excep.o

use-rtti-excep.o: use-rtti-excep.C rtti-exception.h

librttiexcep_v1.so: rtti-v1.o
	g++ $(CXXFLAGS) $(LDFLAGS) -fPIC -shared -o librttiexcep_v1.so rtti-v1.o

librttiexcep_v2.so: rtti-v2.o
	g++ $(CXXFLAGS) $(LDFLAGS) -fPIC -shared -o librttiexcep_v2.so rtti-v2.o

rtti-v1.o: rtti-exception.C  rtti-exception.h
	g++ $(CXXFLAGS) -fPIC -c -o rtti-v1.o -DVER_1 rtti-exception.C

rtti-v2.o: rtti-exception.C  rtti-exception.h
	g++ $(CXXFLAGS) -fPIC -c -o rtti-v2.o -DVER_2 rtti-exception.C

# ------ backcall with weak symbols ------
abi2way-main1: abi2way-main.o backcall1.o libcall1.so
	gcc $(CFLAGS) $(LDFLAGS) -o abi2way-main1 abi2way-main.o backcall1.o \
            -L. -l call1

abi2way-main2: abi2way-main.o backcall2.o libcall2.so
	gcc $(CFLAGS) $(LDFLAGS) -o abi2way-main2 abi2way-main.o backcall2.o \
            -L. -l call2

libcall1.so: libcall1.o backcall1.o
	gcc $(CFLAGS) -fPIC -shared -o libcall1.so libcall1.o backcall1.o 

libcall2.so: libcall2.o backcall2.o
	gcc $(CFLAGS) -fPIC -shared -o libcall2.so libcall2.o backcall2.o 

# ------ TESTS ------
test: $(TESTS)

# -- underlink tests
underlinked: underlinktest libunderlink1.so 
	@./underlinktest.sh

swap-underlinked: underlinktest libunderlink2.so ../tools/swap-libs-audit.so
	@./swap-underlinked.sh

# -- exception tests
exception: use-rtti-excep librttiexcep_v1.so
	@./exceptiontest.sh

swap-exception: use-rtti-excep librttiexcep_v2.so ../tools/swap-libs-audit.so
	@./swap-exceptiontest.sh

# -- backcall with weak symbol
abi2way-diff: libcall1.so libcall2.so
	@./abi2way-diff.sh

abi2way-compat: abi2way-main1 libcall1.so libcall2.so
	@./abi2way-compat.sh

abi2way-compat-weak: abi2way-main1 libcall2.so
	@./abi2way-compat-weak.sh

abicompat-underlink: libunderlink1.so
	@./abicompat-underlink.sh

backcall: abi2way-main1 abi2way-main2 libcall1.so libcall2.so
	@./backcall.sh

swap-backcall: ../tools/swap-libs-audit.so abi2way-main1 libcall1.so libcall2.so 
	@./swap-backcall.sh

# ----- Other -----
clean:
	rm -f *~ *.so *.so underlinktest use-rtti-excep
