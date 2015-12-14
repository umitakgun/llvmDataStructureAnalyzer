cmake_minimum_required(VERSION 3.1)

SET(CMAKE_CXX_COMPILER /Users/umit/research/LLVM/build/bin/clang++)
SET(CMAKE_C_COMPILER /Users/umit/research/LLVM/build/bin/clang)

find_package(LLVM REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})

add_subdirectory(DataStructureAnalyzer) 
add_subdirectory(PointerStructureAnalysis)

list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)
