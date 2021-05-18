CXXFLAGS=-g

all: app1 libt1.so libt2.so

app1: app1.o libt1.so
	g++ $(CXXFLAGS) -o app1 app1.o -L. -l t1

app1.o:
	g++ $(CXXFLAGS) -o app1.o -c app1.C

libt1.so: lib1.o
	g++ $(CXXFLAGS) -fPIC -shared -o libt1.so lib1.o

lib1.o: lib1.C
	g++ $(CXXFLAGS) -o lib1.o -c lib1.C

libt2.so: lib2.o
	g++ $(CXXFLAGS) -fPIC -shared -o libt2.so lib2.o

lib2.o: lib2.C
	g++ $(CXXFLAGS) -o lib2.o -c lib2.C

clean:
	rm -f *~ *.o *.so app1
