#include "rtti-exception.h"

extern int do_something( int num){
  num=num+2;
  if(num!=18)
    throw LongExceptionName(num);
  else
    throw ShorterExceptionName();
  return num;
}
