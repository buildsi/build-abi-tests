#define VER_1

#include <iostream>

#include "rtti-exception.h"

int main( int argc, char **argv){
  try{
    do_something( 3);
  }
  catch( ex &excep){
    std::cout << "caught " << excep.num << std::endl;
  }
  return 0;
}
