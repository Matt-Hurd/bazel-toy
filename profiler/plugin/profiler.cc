#include "tensorflow/python/profiler/internal/pywrap_profiler_plugin.h"
#include <iostream>

int main() {
  int result = tensorflow::profiler::pywrap::test();
  std::cout << "Result: " << result << std::endl;
  return 0;
}
