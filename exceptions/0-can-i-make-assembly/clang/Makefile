all:
	clang -g -W -Wall -save-temps -c exception.cpp
	clang -g -Wall -fPIC -shared -o libdinosaur-v1.so libdinosaur.cpp
	clang -g -W -Wall -save-temps -c libdinosaur.cpp
	clang -g -Wall -o use-dinosaur use-dinosaur.cpp -I . -L. libdinosaur-v1.so
	clang -g -W -Wall -save-temps -c use-dinosaur.cpp
