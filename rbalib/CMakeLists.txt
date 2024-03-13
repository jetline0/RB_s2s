cmake_minimum_required(VERSION 3.16)

project(RegisterBlocking_Analysis)

set(tool "RB_analysis")

# Output directory.
# set(BUNDLE_OUTPUT_DIRECTORY ${BUNDLE})

# Executable.
add_executable(${tool} $<TARGET_OBJECTS:CustomMain>)
target_link_libraries(${tool}
  -I${CMAKE_CURRENT_SOURCE_DIR}/inc
  -lpng 
  -lm 
  -ldl
  -no-pie
  -fPIC
  -g
  )
set(C_FILES
  ${CMAKE_CURRENT_SOURCE_DIR}/src/utils.c
  ${CMAKE_CURRENT_SOURCE_DIR}/src/RB_analysis.c
  ${CMAKE_CURRENT_SOURCE_DIR}/src/main_algorithm.c
)
# Driver program with main function for regular bundle
add_library(CustomMain OBJECT ${C_FILES})
target_compile_options(CustomMain PRIVATE -g )
