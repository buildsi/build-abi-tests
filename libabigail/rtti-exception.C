#include <iostream>
#include "rtti-exception.h"

extern int do_something( int num){
  std::cout << "did something\n";
  throw ex(num);
}
