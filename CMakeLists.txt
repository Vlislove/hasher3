cmake_minimum_required(VERSION 3.8)
project(hasher3)

#Library
add_library(hasherlib
        src/functions.cpp
        src/functions.h)
set_target_properties(hasherlib PROPERTIES
        CXX_STANDARD 11
        CXX_STANDARD_REQUIRED YES
        CXX_EXTENSIONS NO)

#Hasher
add_executable(hasher3
        src/main.cpp)

add_dependencies(hasher3 hasherlib)

set_target_properties(hasherlib PROPERTIES
        CXX_STANDARD 11
        CXX_STANDARD_REQUIRED YES
        CXX_EXTENSIONS NO)

target_link_libraries(hasher3 hasherlib)

#Unit tests
add_executable(hasher_unittests
        tests/main.cpp
        tests/hasher_unittest.cpp)

set_target_properties(hasher_unittests PROPERTIES
        CXX_STANDARD 11
        CXX_STANDARD_REQUIRED YES
        CXX_EXTENSIONS NO)

target_include_directories(hasher_unittests PRIVATE
        "${PROJECT_SOURCE_DIR}"
        "${PROJECT_SOURCE_DIR}/src"
        "${PROJECT_SOURCE_DIR}/tests/gtest/googletest"
        "${PROJECT_SOURCE_DIR}/tests/gtest/googletest/include")

add_dependencies(hasher3 hasherlib)

target_link_libraries(hasher_unittests hasherlib)

find_package(Threads REQUIRED)
target_link_libraries(hasher_unittests ${CMAKE_THREAD_LIBS_INIT})