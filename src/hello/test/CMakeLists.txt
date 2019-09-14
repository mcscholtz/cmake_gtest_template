cmake_minimum_required (VERSION 3.10)
project (hello_tests)

macro (create_test target)
  add_test (NAME ${target} COMMAND $<TARGET_FILE:${target}>)
endmacro (create_test)

set(hello_test_exe hello-test)

#Add all test source files
set(test_src 
  ${src}/hello/test/hello-test.cpp
)

#Declare executable
add_executable(${hello_test_exe} ${test_src})

#Add the include files
target_include_directories(${hello_test_exe} PRIVATE 
  ${gtest}/include
  ${src}/hello
)

#Libraries to link to
target_link_libraries(${hello_test_exe} 
  ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libhello.a
  ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libgtest.a
  ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libgtest_main.a
pthread
)

#create a test so that the ctest command can be used
create_test(${hello_test_exe})
