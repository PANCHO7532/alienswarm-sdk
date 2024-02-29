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
if(INCLUDE_STDSHADERS)
    # Just so you know I'm not really sure how to use these properly *yet* for ensuring its functionality
    # You're free to try and compile them but I do not guarantee nothing. Feel free to submit an PR to fix this.
    # Probably you won't be able to compile these on a platform that's not Windows but we'll see later.
    add_subdirectory(src/materialsystem/shaderlib)
    add_subdirectory(src/materialsystem/stdshaders)
endif()