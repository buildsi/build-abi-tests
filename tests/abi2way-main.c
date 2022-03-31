#include <stdio.h>

char *libcall( char *arg);

int main(int argc, char **argv){
  printf("%s\n", libcall(argv[0]));
  return 0;
}
