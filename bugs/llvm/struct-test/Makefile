all:
	clang++ -fPIC -shared -O3 -g -o libv.so libv.c
	clang++ -O3 -o v v.c -L. -lv -Wl,-rpath,`pwd`
	objdump -d libv.so > clang-libv.asm
