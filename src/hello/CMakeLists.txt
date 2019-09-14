cmake_minimum_required (VERSION 3.10)
project (hello)

set(hello_lib hello)
set(hello_src ${src}/hello)

add_library(${hello_lib} STATIC ${hello_src}/hello.cpp)
