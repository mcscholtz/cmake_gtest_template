cmake_minimum_required (VERSION 3.9.2)
project (helloTests)
enable_testing()
include(../hello.cmake)

# Locate GTest
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

#Add all test source files
set (TEST_SOURCE_DIR ${CMAKE_SOURCE_DIR}/tests)

#Build each test source file
set (TEST_REGEX ${CMAKE_SOURCE_DIR}/tests/*-test.cpp)
file(GLOB files ${TEST_REGEX})
foreach(file ${files})
  #Use the filenames as the test names
  GET_FILENAME_COMPONENT(sourcefile ${file} NAME_WE)
  SET( TEST_EXE ${sourcefile} )
  ADD_EXECUTABLE( ${TEST_EXE} ${file} ${TEST_SOURCES})
  
  #Include source
  TARGET_INCLUDE_DIRECTORIES(${TEST_EXE} PRIVATE 
    ${PROJECT_SOURCE_DIR}
    ${TEST_SOURCE_DIR}
  )
  
  #Link libraries
  TARGET_LINK_LIBRARIES( ${TEST_EXE} ${PROJECT_LIB} ${GTEST_LIBRARIES} pthread)
  
  #Add tests
  add_test(
    NAME ${TEST_EXE}
    COMMAND ${TEST_EXE})
endforeach()
