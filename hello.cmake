set (CMAKE_C_STANDARD 11)

#compiler warnings
#TODO set flags here based on the compiler

# These are the corresponding output paths
set (EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/build)
set (LIBRARY_OUTPUT_PATH ${EXECUTABLE_OUTPUT_PATH})

# Library under test source 
set (PROJECT_SOURCE_DIR ${CMAKE_SOURCE_DIR}/src )

#Name of that library
SET( PROJECT_LIB hello )
