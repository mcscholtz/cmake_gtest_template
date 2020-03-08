#!/bin/bash

#clean top level
rm CMakeCache.txt > /dev/null 2>&1
rm Makefile > /dev/null 2>&1
rm cmake_install.cmake > /dev/null 2>&1
rm CTestTestfile.cmake > /dev/null 2>&1
rm -rf build > /dev/null 2>&1
rm -rf CMakeFiles > /dev/null 2>&1

#clean hello
rm src/hello/Makefile > /dev/null 2>&1
rm -rf src/hello/CMakeFiles > /dev/null 2>&1
rm -rf src/hello/cmake_install.cmake > /dev/null 2>&1

#clean hello/test
rm src/hello/test/CTestTestfile.cmake > /dev/null 2>&1
rm src/hello/test/cmake_install.cmake > /dev/null 2>&1
rm src/hello/test/Makefile > /dev/null 2>&1
rm -rf src/hello/test/CMakeFiles > /dev/null 2>&1