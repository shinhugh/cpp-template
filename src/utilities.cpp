// Debug utilities implementations

#include <iostream>
#include <map>
#include <string>
#include <vector>
#include <utilities.h>

namespace Utilities {

  bool logEnabled = false;

  void log(const std::string &message) {
    if (logEnabled) {
      std::cout << message + std::string("\n");
    }
  }

}
