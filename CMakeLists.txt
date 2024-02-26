#############################################################################
## Copyright (c) 2024, P7COMunications LLC                                  #
## Author(s): Francisco Medina <pancho7532@p7com.net>                       #
## Date: 02/Feb/2024                                                        #
#############################################################################
## Purpose: Project CMakeLists.txt                                          #
#############################################################################
cmake_minimum_required(VERSION 3.13)
if(NOT DEFINED CMAKE_TOOLCHAIN_FILE OR CMAKE_TOOLCHAIN_FILE STREQUAL "")
    message(STATUS "No toolchain file defined, using default one.")
    set(CMAKE_TOOLCHAIN_FILE "${CMAKE_CURRENT_SOURCE_DIR}/cmake/toolchains/native.cmake")
endif()
if(NOT DEFINED CMAKE_BUILD_TYPE OR CMAKE_BUILD_TYPE STREQUAL "")
    message(STATUS "No build type defined, falling back to Release.")
    set(CMAKE_BUILD_TYPE "Release")
endif()
set(SOURCEMOD_NAME "mod_swarm")
string(TOUPPER ${SOURCEMOD_NAME} SOURCEMOD_NAME_CAPS)
string(TOLOWER ${CMAKE_BUILD_TYPE} CMAKE_BUILD_TYPE_LOWERCASE)
message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")
project(game)
include(cmake/projectPreferences.cmake)

add_subdirectory(src/game/client)
add_subdirectory(src/game/missionchooser)
add_subdirectory(src/game/server)