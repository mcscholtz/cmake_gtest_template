cmake_minimum_required (VERSION 3.9.2)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_REQUIRED_FLAGS -std=c++17)

PROJECT (hello)
enable_testing()
add_subdirectory(tests)
include(hello.cmake)

#Project Sources
set (PROJECT_SOURCES 
    ${PROJECT_SOURCE_DIR}/hello.cpp
)


#Add the library as static lib for testing
ADD_LIBRARY( ${PROJECT_LIB} STATIC ${PROJECT_SOURCES} )

#Do this to build it as an executable
#ADD_EXECUTABLE(hello ${PROJECT_SOURCES})