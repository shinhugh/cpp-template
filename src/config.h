// Program config definitions

#ifndef CONFIG_H
#define CONFIG_H

class Config {

public:

  bool debug;
  static bool processArguments(int argc, const char * const *argv, Config& config);

};

#endif