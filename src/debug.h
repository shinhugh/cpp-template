// Debug utilities definitions

#ifndef DEBUG_H
#define DEBUG_H

#include <string>

namespace Utilities {

  class Debug {

  public:

    static bool enabled;

    static void log(const std::string &);

  };

}

#endif
