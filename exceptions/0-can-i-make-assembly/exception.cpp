#include <iostream>

class DinosaurException { 

public:
    DinosaurException() {}
    ~DinosaurException() {}
};

void throw_the_exception(bool throwit) {
    if (throwit) {
        throw DinosaurException();
    }
}

void hello_dinosaur() {
    std::cout << "Hello Dinosaur!" << std::endl;
}

void log(unsigned int count);

void catch_the_exception() {
    log(0);
    try {
        log(1);
        hello_dinosaur();
        log(2);
    } catch (const DinosaurException& e) {
        log(3);
    }
    log(4);
}
