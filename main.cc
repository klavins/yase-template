#include "yase.hh"
#include "my_module.hh"

using namespace yase;

int main(int argc, char * argv[]) {

    Container container;
    Audio audio;
    Sine sine;
    MyModule my_module;

    container.connect(sine, "signal", my_module, "signal")
             .connect(sine, "signal", audio, "left")
             .connect(my_module, "signal", audio, "right");

    container.run(UNTIL_INTERRUPTED);

    return 0;

}