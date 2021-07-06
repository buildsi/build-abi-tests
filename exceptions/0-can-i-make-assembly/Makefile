all:
	g++ -g -W -Wall -save-temps -c exception.cpp
	g++ -g -Wall -fPIC -shared -o libdinosaur-v1.so libdinosaur.cpp
	g++ -g -W -Wall -save-temps -c libdinosaur.cpp
	g++ -g -Wall -o use-dinosaur use-dinosaur.cpp -I . -L. libdinosaur-v1.so
	g++ -g -W -Wall -save-temps -c use-dinosaur.cpp
