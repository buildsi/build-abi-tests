int backcall( char *arg) __attribute__ ((weak));

char *libcall( char *arg){
  return arg+backcall(arg);
}
