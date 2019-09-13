set(hello_lib hello)
set(hello_src ${src}/hello)

add_library(${hello_lib} STATIC ${hello_src}/hello.cpp)
