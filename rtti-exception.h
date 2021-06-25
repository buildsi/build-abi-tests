#ifdef VER_1
class ex {
public:
  int num;
  ex( int n):num(n){}
};
#endif

#ifdef VER_2
class ex {
  float num;
public:
  ex( int n):num(n){}
};
#endif

int do_something( int num);
