# project name:         Hello-Cuda
# languages used:       CXX CUDA
#   *CXX 
#   *CUDA
# package version:      1.0
# c++ standard:         17
#   * 17
# executable target:    compute
# header directory:     include
# list of source files: <SRC_FILES>

cmake_minimum_required(VERSION 3.15...4.1)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/external/dotfiles/DEVELOPMENT/cpp_and_cuda/cmake")
include(add_valgrind_test)
include(add_cpp_compile_options)
include(add_cuda_compile_options)
include(add_clang_tidy_options)

project(Hello-Cuda
  VERSION 1.0
  LANGUAGES CXX CUDA
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(compute)

add_cpp_compile_options(compute)
add_cuda_compile_options(compute)

target_include_directories(compute PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# include(CTest)
if(BUILD_TESTING)
  find_program(MEMCHECK valgrind)
  add_valgrind_test(compute)
endif()

target_sources(compute PRIVATE
  src/main.cu
  src/hello-world/helloWorld.cu
)
