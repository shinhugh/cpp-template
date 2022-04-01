// Program entry point

#include <config.h>
#include <debug.h>

int main(int argc, char *argv[]) {
  Config config;
  if (!Config::processArguments(argc, argv, config)) {
    return 0;
  }
  Debug::enabled = config.debug;

  Debug::log("Hello world!");
}