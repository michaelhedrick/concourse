#!/bin/bash

set -o posix
set -o errexit
set -o pipefail
set -ex
echo "Performing static analysis using cppcheck"
cppcheck --language=c++ --enable=all -itest --addon=threadsafety.py --xml --error-exitcode=2 ./