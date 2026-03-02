cmake_minimum_required(VERSION 3.15...4.1)

project(Hello-Cuda
  VERSION 1.0
  DESCRIPTION "Classic \"Hello World\" program utilizing CUDA parallel computing platform."
  LANGUAGES CXX CUDA)

file(GLOB SOURCES
    include/*.h
    src/main.cu
    src/*/*.cu
)

add_executable(hello-cuda ${SOURCES})
