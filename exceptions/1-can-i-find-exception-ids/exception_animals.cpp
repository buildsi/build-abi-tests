#include <iostream>

class DinosaurException { 

public:
    DinosaurException() {}
    ~DinosaurException() {}
};

class AlligatorException { 

public:
    AlligatorException() {}
    ~AlligatorException() {}
};

class MooseException { 

public:
    MooseException() {}
    ~MooseException() {}
};


void throw_the_exception(bool throwit) {
    if (throwit) {
        throw DinosaurException();
    }
}

void hello_dinosaur() {
    std::cout << "Hello Dinosaur!" << std::endl;
}

void log(unsigned int count) {
    std::cout << count << std::endl;
}

void catch_the_exception() {
    log(0);
    try {
        log(1);
        hello_dinosaur();
        throw_the_exception(true);
        log(2);
    } catch (const DinosaurException& e) {        
        log(3);
    } catch (const AlligatorException& e) {
        log(4);    
    } catch (const MooseException& e) {
        log(5);    
    }
    log(6);
}

int main() {
    catch_the_exception();
    return 0;
}

// gdb ./program
// list --> shows source code
// break line number |function | file:number
// r --> runs (add command line params here)
// c --> continue
// disass

// Dinosaur exception has two different layouts
// look at first param of __cxa_allocate_exception (that's the 1!)
// how does the throw pass to the catch block.
// gdb tutorial
