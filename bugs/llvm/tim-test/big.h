#pragma once

#include <cstdint>

struct bigstruct {
  long a;
  long b;
  long c;
  long d;
  long e;
  __int128_t f;
};

void bigcall(long anotherA, long anotherB, long anotherC, long anotherD, long anotherE, bigstruct bigthing);
