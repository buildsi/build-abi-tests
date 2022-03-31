#ifdef VER_1
class LongExceptionName {
public:
  int num;
  LongExceptionName( int n):num(n){}
};
#endif

#ifdef VER_2
class LongExceptionName {
  float num;
public:
  LongExceptionName( int n):num(n){}
};
#endif

class ShorterExceptionName {};

int do_something( int num);
