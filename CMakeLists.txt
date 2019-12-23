cmake_minimum_required(VERSION 3.10)
project(aacgain VERSION 2.0.0)

add_subdirectory(3rdparty)

add_definitions(-DHAVE_CONFIG_H -DAACGAIN)

include(CheckIncludeFile)
include(CheckIncludeFiles)
check_include_file("inttypes.h" HAVE_INTTYPES_H)
check_include_file("stdint.h" HAVE_STDINT_H)
check_include_files("stdlib.h;stdarg.h;string.h;float.h" STDC_HEADERS)

configure_file("${PROJECT_SOURCE_DIR}/config.h.in"
               "${PROJECT_BINARY_DIR}/config.h"
              )
include_directories("${PROJECT_BINARY_DIR}")
include_directories("${PROJECT_SOURCE_DIR}/aacgain")

add_subdirectory(mp3gain)
add_subdirectory(aacgain)
