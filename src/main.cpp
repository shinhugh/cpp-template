// Program entry point

#include <config.h>
#include <debug.h>

int main(int argc, char *argv[]) {
  Utilities::Config config;
  if (!Utilities::Config::processArguments(argc, argv, config)) {
    return 0;
  }
  Utilities::Debug::enabled = config.debug;

  Utilities::Debug::log("Hello world!");
}
