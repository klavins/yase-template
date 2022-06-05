#ifndef YASE_MY_MODULE_H
#define YASE_MY_MODULE_H

#include "yase.hh"

namespace yase {

    //! An example module that negates its incoming signal

    class MyModule : public Module {

    public:

      MyModule();
      void init();
      void update();

    private:

    };

}

#endif
