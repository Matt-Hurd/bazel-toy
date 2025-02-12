#include "tensorflow/python/profiler/internal/pywrap_profiler_plugin.h"
#include <iostream>

int main() {
    std::cout << tensorflow::profiler::pywrap::test() << std::endl;
    return 0;
}
