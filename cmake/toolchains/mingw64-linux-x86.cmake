#############################################################################
## Copyright (c) 2024, P7COMunications LLC                                  #
## Author(s): Francisco Medina <pancho7532@p7com.net>                       #
## Date: 15/Feb/2024                                                        #
#############################################################################
## Purpose: Windows crosscompile toolchain with MinGW for x86 systems       #
#############################################################################
set(CMAKE_SYSTEM_NAME               Windows)
set(CMAKE_SYSTEM_PROCESSOR          i386) # Should I leave it as i686?
set(CMAKE_AR                        i686-w64-mingw32-ar)
set(CMAKE_ASM_COMPILER              i686-w64-mingw32-as)
set(CMAKE_C_COMPILER                i686-w64-mingw32-gcc)
set(CMAKE_CXX_COMPILER              i686-w64-mingw32-g++)
set(CMAKE_LINKER                    i686-w64-mingw32-ld)
set(CMAKE_OBJCOPY                   i686-w64-mingw32-objcopy)
set(CMAKE_RANLIB                    i686-w64-mingw32-ranlib)
set(CMAKE_SIZE                      i686-w64-mingw32-size)
set(CMAKE_STRIP                     i686-w64-mingw32-strip)
set(CMAKE_C_FLAGS                   "")
set(CMAKE_CXX_FLAGS                 "")
# You may want to change/remove these flags and set them up individually on subprojects. 
# If you ran into some problems when linking pre-compiled static libraries then probably these are the reason.
set(CMAKE_EXE_LINKER_FLAGS          "-static -static-libgcc -static-libstdc++")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM     NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY     ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE     ONLY)