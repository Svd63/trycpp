# mkdir build
# cd build
# cmake -G "MinGW Makefiles" ..

set(CMAKE_C_COMPILER "E:/Svd63/TDM-GCC-64/bin/gcc.exe")
set(CMAKE_CXX_COMPILER "E:/Svd63/TDM-GCC-64/bin/g++.exe")

cmake_minimum_required(VERSION 3.31)

#project(try1 CXX)
project(try1)

add_executable(try1 try1.cpp)
