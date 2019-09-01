#!/bin/bash
rm CMakeCache.txt > /dev/null 2>&1
rm Makefile > /dev/null 2>&1
rm cmake_install.cmake > /dev/null 2>&1
rm CTestTestfile.cmake > /dev/null 2>&1
rm -rf build > /dev/null 2>&1
rm -rf CMakeFiles > /dev/null 2>&1


rm tests/Makefile > /dev/null 2>&1
rm tests/cmake_install.cmake > /dev/null 2>&1
rm tests/CTestTestfile.cmake > /dev/null 2>&1
rm -rf tests/CMakeFiles > /dev/null 2>&1