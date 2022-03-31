char *backcall( char *arg) __attribute__ ((weak));

char *libcall( char *arg){
  return backcall(arg);
}
