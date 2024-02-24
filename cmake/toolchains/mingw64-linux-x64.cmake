#############################################################################
## Copyright (c) 2024, P7COMunications LLC                                  #
## Author(s): Francisco Medina <pancho7532@p7com.net>                       #
## Date: 15/Feb/2024                                                        #
#############################################################################
## Purpose: Windows crosscompile toolchain with MinGW for x64 systems       #
#############################################################################
set(CMAKE_SYSTEM_NAME               Windows)
set(CMAKE_SYSTEM_PROCESSOR          x86_64)
set(CMAKE_AR                        x86_64-w64-mingw32-ar)
set(CMAKE_ASM_COMPILER              x86_64-w64-mingw32-as)
set(CMAKE_C_COMPILER                x86_64-w64-mingw32-gcc)
set(CMAKE_CXX_COMPILER              x86_64-w64-mingw32-g++)
set(CMAKE_LINKER                    x86_64-w64-mingw32-ld)
set(CMAKE_OBJCOPY                   x86_64-w64-mingw32-objcopy)
set(CMAKE_RANLIB                    x86_64-w64-mingw32-ranlib)
set(CMAKE_SIZE                      x86_64-w64-mingw32-size)
set(CMAKE_STRIP                     x86_64-w64-mingw32-strip)
set(CMAKE_C_FLAGS                   "")
set(CMAKE_CXX_FLAGS                 "")
# You may want to change/remove these flags and set them up individually on subprojects. 
# If you ran into some problems when linking pre-compiled static libraries then probably these are the reason.
set(CMAKE_EXE_LINKER_FLAGS          "-static -static-libgcc -static-libstdc++")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM     NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY     ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE     ONLY)