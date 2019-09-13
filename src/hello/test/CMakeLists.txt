cmake_minimum_required (VERSION 3.10)
project (hello-tests)

#include(../hello.cmake)

#add_subdirectory(${PROJECT_SOURCE_DIR}/lib/googletest)
# Locate GTest
#find_package(GTest REQUIRED)
#include_directories(${GTEST_INCLUDE_DIRS})



set(test_exe hello-test)

#Add all test source files
set(test_src 
  ${src}/hello/test/hello-test.cpp
)

message(${test_exe})
message(${gtest})
message(${src}/hello)

add_executable(${test_exe} ${test_src})
target_include_directories(${test_exe} PRIVATE ${gtest}/include)
target_include_directories(${test_exe} PRIVATE ${gtest}/src)
target_include_directories(${test_exe} PRIVATE ${src}/hello)


target_link_libraries(${test_exe} ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libhello.a)
target_link_libraries(${test_exe} ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libgtest.a)
target_link_libraries(${test_exe} ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libgtest_main.a)
target_link_libraries(${test_exe} pthread)
#    ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libgtest.a
#    ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libgtest_main.a
#    ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libhello.a
    #Threads::Threads
#  )
#    ${gtest}/src
#    ${gtest}/include
#)

add_test(${test_exe} ${test_exe})

#Build each test source file
#set (regex ${module_src}/*-test.cpp)
#file(GLOB files ${regex})
#foreach(file ${files})
  #Use the filenames as the test namesset(MODULE_SRC ${SRC}/hello)
  
#  get_filename_component(sourcefile ${file} NAME_WE)
#  set(exe ${sourcefile})
#  add_executable(${exe} ${file})
  
#  message(${exe})
#  message(${gtest})
#  message(${src}/hello)

  #Include source
#  target_include_directories(${exe} public
    #${src}/hello
    #${gtest}/src
#    ${gtest}/include
#  )
  #TARGET_INCLUDE_DIRECTORIES(${TEST_EXE} PRIVATE 
  #  ${PROJECT_SOURCE_DIR}
  #  ${TEST_SOURCE_DIR}
  #)
  
  #Link libraries
  #TARGET_LINK_LIBRARIES( ${TEST_EXE} ${PROJECT_LIB} ${GTEST_LIBRARIES} pthread)
  #set(CMAKE_THREAD_PREFER_PTHREAD TRUE)
  #set(THREADS_PREFER_PTHREAD_FLAG TRUE)
  #find_package(Threads REQUIRED)
  
# target_link_libraries(
#    ${exe}
#    ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libgtest.a
#    ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libgtest_main.a
#    ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libhello.a
    #Threads::Threads
#  )
  #target_link_libraries(${exe} )
  
  #Add tests
#  add_test(
#    name ${exe}
#    command ${exe})
#endforeach()

