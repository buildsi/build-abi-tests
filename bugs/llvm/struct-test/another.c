#include <cstdio>
#include "big.h"

void bigcall(long anotherA, long anotherB, long anotherC, long anotherD, long anotherE, bigstruct bigthing)
{
   printf("%ld %ld %ld %ld %ld 0x%lx%lx\n", bigthing.a, bigthing.b, bigthing.c, bigthing.d, bigthing.e, (unsigned long) (bigthing.f >> 64), (unsigned long) (bigthing.f & 0xffffffffffffffff));
}
