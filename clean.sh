#!/bin/bash

#clean top level
rm CMakeCache.txt > /dev/null 2>&1
rm Makefile > /dev/null 2>&1
rm cmake_install.cmake > /dev/null 2>&1
rm CTestTestfile.cmake > /dev/null 2>&1
rm -rf build > /dev/null 2>&1
rm -rf CMakeFiles > /dev/null 2>&1

#clean hello
rm src/CTestTestfile.cmake > /dev/null 2>&1
rm src/Makefile > /dev/null 2>&1
rm -rf src/CMakeFiles > /dev/null 2>&1