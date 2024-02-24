#############################################################################
## Copyright (c) 2024, P7COMunications LLC                                  #
## Author(s): Francisco Medina <pancho7532@p7com.net>                       #
## Date: 15/Feb/2024                                                        #
#############################################################################
## Purpose: Linux crosscompile toolchain for x86 systems                    #
#############################################################################
set(CMAKE_SYSTEM_NAME               Linux)
set(CMAKE_SYSTEM_PROCESSOR          i386)
set(CMAKE_AR                        ar)
set(CMAKE_ASM_COMPILER              as)
set(CMAKE_C_COMPILER                gcc)
set(CMAKE_CXX_COMPILER              g++)
set(CMAKE_LINKER                    ld)
set(CMAKE_OBJCOPY                   objcopy)
set(CMAKE_RANLIB                    ranlib)
set(CMAKE_SIZE                      size)
set(CMAKE_STRIP                     strip)
set(CMAKE_C_FLAGS                   "-m32")
set(CMAKE_CXX_FLAGS                 "-m32")
set(CMAKE_EXE_LINKER_FLAGS          "-m32")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM     NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY     ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE     ONLY)