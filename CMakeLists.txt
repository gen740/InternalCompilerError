cmake_minimum_required(VERSION 3.28)

project(MyVec CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 23)

add_library(MyVec)

file(GLOB LIBRARY_MODULE_SOURCES ${CMAKE_CURRENT_LIST_DIR}/src/*.ccm)
target_sources(MyVec PUBLIC FILE_SET CXX_MODULES FILES ${LIBRARY_SOURCES}
                            ${LIBRARY_MODULE_SOURCES})

find_package(OpenMP REQUIRED)
target_link_libraries(MyVec PRIVATE OpenMP::OpenMP_CXX)
