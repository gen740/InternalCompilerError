cmake_minimum_required(VERSION 3.28)

project(MyVec CXX)

set(CMAKE_CXX_STANDARD 23)

add_library(MyVec)

file(GLOB LIBRARY_MODULE_SOURCES ${CMAKE_CURRENT_LIST_DIR}/*.ccm)
target_sources(MyVec PUBLIC FILE_SET CXX_MODULES FILES
                            ${LIBRARY_MODULE_SOURCES})
