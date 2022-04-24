// Program config definitions

#ifndef CONFIG_H
#define CONFIG_H

namespace Utilities {

  class Config {

  public:

    bool debug;

    static bool processArguments(int, const char * const *, Config &);

  };

}

#endif
