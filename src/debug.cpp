// Debug utilities implementations

#include <iostream>
#include <string>
#include "debug.h"

bool Debug::enabled = false;

void Debug::log(const std::string &content) {
  if (enabled) {
    std::cout << content << std::endl;
  }
}