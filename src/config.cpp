// Program config implementations

#include <cstring>
#include <iostream>
#include <config.h>

bool Config::processArguments(int argc, const char * const *argv,
Config &config) {
  Config parsed = {
    .debug = false
  };

  for (int i = 1; i < argc; i++) {
    if (!strcmp(argv[i], "--debug") || !strcmp(argv[i], "-d")) {
      if (parsed.debug) {
        std::cout << "Duplicate argument: " << argv[i] << std::endl;
        return false;
      }
      parsed.debug = true;
    }

    else {
      std::cout << "Unrecognized argument: " << argv[i] << std::endl;
      return false;
    }
  }

  config = parsed;
  return true;
}