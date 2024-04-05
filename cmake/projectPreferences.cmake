#############################################################################
## Copyright (c) 2024, P7COMunications LLC                                  #
## Author(s): Francisco Medina <pancho7532@p7com.net>                       #
## Date: 15/Feb/2024                                                        #
#############################################################################
## Purpose: Preferences applied to this project                             #
#############################################################################
# Output directory for executables
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/${CMAKE_PROJECT_NAME}/${SOURCEMOD_NAME}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/")

# Output directory for shared libraries (.so/.dll)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/${CMAKE_PROJECT_NAME}/${SOURCEMOD_NAME}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_MINSIZEREL "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELWITHDEBINFO "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/")

# Output directory for static libraries (.lib/.a)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/src/lib/public")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_MINSIZEREL "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELWITHDEBINFO "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/")

# Compiler flags
if(MSVC)
    # For Windows MSVC
    set(CMAKE_C_FLAGS                   "${CMAKE_C_FLAGS} /W4 /GF /GR /GS- /arch:SSE2 /fp:fast /MP /wd4710 /wd4820 /wd4514 /wd4986 /wd4530 /DWIN32 /D_WIN32 /D_WINDOWS")
    set(CMAKE_CXX_FLAGS                 "${CMAKE_CXX_FLAGS} /W4 /GF /GR /GS- /arch:SSE2 /fp:fast /MP /wd4710 /wd4820 /wd4514 /wd4986 /wd4530 /DWIN32 /D_WIN32 /D_WINDOWS")
    set(CMAKE_C_FLAGS_DEBUG             "/Od /Ob0 /Zi /Gm /RTC1 /MTd /DDEBUG /D_DEBUG")
    set(CMAKE_C_FLAGS_RELEASE           "/O2 /Ob2 /Oi /Ot /Gy /MT /DNDEBUG")
    set(CMAKE_C_FLAGS_MINSIZEREL        "/O1 /Ob1 /Oi /Ot /Gy /MT /DNDEBUG")
    set(CMAKE_C_FLAGS_RELWITHDEBINFO    "/O2 /Ob1 /Oi /Ot /Gy /Zi /MTd /DNDEBUG")
    set(CMAKE_CXX_FLAGS_DEBUG           "/Od /Ob0 /Zi /Gm /RTC1 /MTd /DDEBUG /D_DEBUG")
    set(CMAKE_CXX_FLAGS_RELEASE         "/O2 /Ob2 /Oi /Ot /Gy /MT /DNDEBUG")
    set(CMAKE_CXX_FLAGS_MINSIZEREL      "/O1 /Ob1 /Oi /Ot /Gy /MT /DNDEBUG")
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO  "/O2 /Ob1 /Oi /Ot /Gy /Zi /MTd /DNDEBUG")
else()
    # For anything else (usually UNIX/Linux)
    set(CMAKE_C_STANDARD 11)
    set(CMAKE_C_STANDARD_REQUIRED ON)
    set(CMAKE_C_EXTENSIONS OFF) # enable/disable GNU std specification/extension
    set(CMAKE_CXX_STANDARD 11)
    set(CMAKE_CXX_STANDARD_REQUIRED ON)
    set(CMAKE_CXX_EXTENSIONS OFF) # enable/disable GNU std specification/extension
    set(CMAKE_C_FLAGS                   "${CMAKE_C_FLAGS} -fPIC -fpic -fpermissive -Wno-narrowing -Werror=return-type -DLINUX -D_LINUX -DGNUC -DPOSIX -D_POSIX -DPLATFORM_POSIX -DCOMPILER_GCC -DRAD_TELEMETRY_DISABLED -U_FORTIFY_SOURCE")
    set(CMAKE_CXX_FLAGS                 "${CMAKE_CXX_FLAGS} -fPIC -fpic -fpermissive -Wno-narrowing -Werror=return-type -D_GLIBCXX_USE_CXX11_ABI=0 -DLINUX -D_LINUX -DGNUC -DPOSIX -D_POSIX -DPLATFORM_POSIX -DCOMPILER_GCC -DRAD_TELEMETRY_DISABLED -U_FORTIFY_SOURCE")
    set(CMAKE_C_FLAGS_DEBUG             "-O0 -g2 -gdwarf-2 -DDEBUG")
    set(CMAKE_C_FLAGS_RELEASE           "-O3 -s -DNDEBUG")
    set(CMAKE_C_FLAGS_MINSIZEREL        "-Os -DNDEBUG")
    set(CMAKE_C_FLAGS_RELWITHDEBINFO    "-O2 -g2 -gdwarf-2 -DNDEBUG")
    set(CMAKE_CXX_FLAGS_DEBUG           "-O0 -g2 -gdwarf-2 -DDEBUG")
    set(CMAKE_CXX_FLAGS_RELEASE         "-O3 -s -DNDEBUG")
    set(CMAKE_CXX_FLAGS_MINSIZEREL      "-Os -DNDEBUG")
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO  "-O2 -g2 -gdwarf-2 -DNDEBUG")
endif()