#############################################################################
## Copyright (c) 2024, P7COMunications LLC                                  #
## Author(s): Francisco Medina <pancho7532@p7com.net>                       #
## Date: 27/Feb/2024                                                        #
#############################################################################
## Purpose: shaderlib static library, CMake Project                         #
#############################################################################
project(shaderlib)
include_directories(../../common
    ../../public
    ../../public/tier0
    ../../public/tier1
    ../
)
add_definitions(-DLIBNAME=${PROJECT_NAME}
    -DVPCGAME=${SOURCEMOD_NAME}
    -DVPCGAMECAPS=${SOURCEMOD_NAME_CAPS}
    -DFAST_MATERIALVAR_ACCESS
)
if(MSVC)
    add_definitions(-D_LIB
        -D_CRT_SECURE_NO_DEPRECATE
        -D_CRT_NONSTDC_NO_DEPRECATE
        -D_CRT_NO_VA_START_VALIDATION
        -DCOMPILER_MSVC
        -DCOMPILER_MSVC32
    )
endif()
set(SOURCEFILES ./BaseShader.cpp
    ./ShaderDLL.cpp
    ./shaderlib_cvar.cpp
)
set(HEADERFILES ../../public/shaderlib/BaseShader.h
    ../../public/shaderlib/commandbuilder.h
    ../../public/shaderlib/cshader.h
    ../../public/shaderlib/ShaderDLL.h
    ./shaderDLL_Global.h
    ./shaderlib_cvar.h
)
set(EXTERNAL_HEADER_FILES ../../public/tier0/basetypes.h
    ../../public/tier0/commonmacros.h
    ../../public/tier0/dbg.h
    ../../public/tier0/fasttimer.h
    ../../public/appframework/IAppSystem.h
    ../../public/tier0/icommandline.h
    ../../public/icvar.h
#    ../../public/ImageLoader.h
    ../../public/materialsystem/imaterial.h
    ../../public/materialsystem/imaterialsystem.h
    ../../public/materialsystem/imaterialsystemhardwareconfig.h
    ../../public/materialsystem/imaterialvar.h
    ../../public/materialsystem/imesh.h
    ../../public/materialsystem/IShader.h
    ../../public/materialsystem/ishaderapi.h
    ../IShaderSystem.h
    ../../public/materialsystem/itexture.h
    ../../public/materialsystem/materialsystem_config.h
    ../../public/mathlib/mathlib.h
    ../../public/tier0/memdbgoff.h
    ../../public/tier0/memdbgon.h
    ../../public/tier0/platform.h
    ../../public/tier0/protected_things.h
    ../../public/string_t.h
    ../../public/tier1/strtools.h
    ../../public/tier1/utlmemory.h
    ../../public/tier1/utlvector.h
    ../../public/mathlib/vector.h
    ../../public/mathlib/vector2d.h
    ../../public/mathlib/vector4d.h
    ../../public/mathlib/vmatrix.h
    ../../public/mathlib/vplane.h
    ../../public/vstdlib/vstdlib.h
)
source_group("External Header Files" FILES ${EXTERNAL_HEADER_FILES})
source_group("Header Files" FILES ${HEADERFILES})
source_group("Source Files" FILES ${SOURCEFILES})

add_library(${PROJECT_NAME} ${SOURCEFILES} ${HEADERFILES} ${EXTERNAL_HEADER_FILES})