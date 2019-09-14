cmake_minimum_required (VERSION 3.10)
cmake_policy(SET CMP0054 NEW)

#Set language requirements
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

project(cmake_gtest_template)

#Set output directories
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build/bin)

#alias for project src dir
set(src ${PROJECT_SOURCE_DIR}/src)
set(gtest ${PROJECT_SOURCE_DIR}/lib/googletest/googletest)
set(gmock ${PROJECT_SOURCE_DIR}/lib/googletest/googlemock)

#Include another cmake project
add_subdirectory(src/hello)
add_subdirectory(lib/googletest)
enable_testing ()
add_subdirectory(src/hello/test)
