// Debug utilities implementations

#include <iostream>
#include <string>
#include <debug.h>

bool Debug::enabled = false;

void Debug::log(const std::string &message) {
  if (enabled) {
    std::cout << message + std::string("\n");
  }
}
