#include "internal/pywrap_profiler_plugin.h"
#include <iostream>

int main() {
  int result = newprofiler::test();
  std::cout << "Result: " << result << std::endl;
  return 0;
}
