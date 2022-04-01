// Debug utilities definitions

#ifndef DEBUG_H
#define DEBUG_H

#include <string>

class Debug {

public:

  static bool enabled;
  static void log(const std::string &content);

};

#endif