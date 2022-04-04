// Program config implementations

#include <cstring>
#include <iostream>
#include <config.h>

bool Config::processArguments(int argc, const char * const *argv,
Config &config) {
  config.debug = false;

  for (int i = 1; i < argc; i++) {
    if (!strcmp(argv[i], "--debug") || !strcmp(argv[i], "-d")) {
      if (config.debug) {
        std::cout << "Duplicate argument: " << argv[i] << std::endl;
        return false;
      }
      config.debug = true;
    }

    else {
      std::cout << "Unrecognized argument: " << argv[i] << std::endl;
      return false;
    }
  }

  return true;
}