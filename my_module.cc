#include "my_module.hh"

namespace yase {

  MyModule::MyModule() {
      add_input("signal");
      add_output("signal");
  }

  void MyModule::init() {

  }

  void MyModule::update() {
      outputs[0] = -inputs[0];
  }    

}

