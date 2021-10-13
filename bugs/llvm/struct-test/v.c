#include "big.h"

int main() {
   __int128_t c;
   c = 0x0000000000000006;
   c = c << 64;
   c += 0x0000000000000007;

   bigstruct bigthing = {1, 2, 3, 4, 5, c};
   bigcall(1, 2, 3, 4, 5, bigthing);
}
