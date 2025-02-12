#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

# --- profiler Test ---
echo "Testing profiler..."
pushd profiler > /dev/null  # Change directory to profiler
bazel clean --expunge
bazel run //plugin:profiler  # Run the profiler binary
profiler_exit_code=$?
popd > /dev/null  # Go back to the original directory
echo "profiler test completed with exit code: $profiler_exit_code"

# --- tensorflow Test ---
echo "Testing tensorflow..."
pushd tensorflow > /dev/null  # Change directory to tensorflow
bazel clean --expunge
bazel run tensorflow/something:test # Run the tensorflow binary
tensorflow_exit_code=$?
popd > /dev/null  # Go back to the original directory
echo "tensorflow test completed with exit code: $tensorflow_exit_code"

# --- Overall Result ---
if [[ $profiler_exit_code -eq 0 && $tensorflow_exit_code -eq 0 ]]; then
  echo "All tests passed!"
  exit 0  # Success
else
  echo "Some tests failed."
  exit 1  # Failure
fi
