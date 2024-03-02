#############################################################################
## Copyright (c) 2024, P7COMunications LLC                                  #
## Author(s): Francisco Medina <pancho7532@p7com.net>                       #
## Date: 27/Feb/2024                                                        #
#############################################################################
## Purpose: stdshader library, CMake Project                                #
#############################################################################
project(stdshader_dx9)
include_directories(../../common
    ../../public
    ../../public/tier0
    ../../public/tier1
    fxctmp9
    vshtmp9
    ../../dx9sdk/include
)
add_definitions(-DDLLNAME=${PROJECT_NAME}
    -DVPCGAME=valve
    -DVPCGAMECAPS=VALVE
    -DSTDSHADER_DX9_DLL_EXPORT
    -DFAST_MATERIALVAR_ACCESS
    -DUSE_ACTUAL_DX
)
if(MSVC)
    add_definitions(-D_USRDLL
        -D_CRT_SECURE_NO_DEPRECATE
        -D_CRT_NONSTDC_NO_DEPRECATE
        -D_CRT_NO_VA_START_VALIDATION
        -DCOMPILER_MSVC
        -DCOMPILER_MSVC32
        -D_DLL_EXT=.dll
    )
    link_directories(../../lib/common/.
        ../../lib/public/.
    )
endif()
set(SOURCEFILES ./aftershock.cpp
    ./aftershock_helper.cpp
    ./BaseVSShader.cpp
    ./Bloom.cpp
    ./BlurFilterX.cpp
    ./BlurFilterY.cpp
    ./BufferClearObeyStencil_dx9.cpp
    ./cable_dx9.cpp
    ./cloak.cpp
    ./cloak_blended_pass_helper.cpp
    ./cloak_dx9_helper.cpp
    ./colorcorrection.cpp
    ../../common/debug_dll_check.cpp
    ./debugmorphaccumulator_dx9.cpp
    ./debugmrttexture.cpp
    ./DebugTextureView.cpp
    ./DecalModulate_dx9.cpp
    ./DepthOfField_dx9.cpp
    ./depthwrite.cpp
    ./Downsample.cpp
    ./downsample_nohdr.cpp
    ./emissive_scroll_blended_pass_helper.cpp
    ./Engine_Post_dx9.cpp
    ./eye_refract.cpp
    ./eye_refract_helper.cpp
    ./eyeglint_dx9.cpp
    ./eyes_dx8_dx9_helper.cpp
    ./eyes_dx9.cpp
    ./filmdust.cpp
    ./filmgrain.cpp
    ./flesh_dx9.cpp
    ./flesh_helper.cpp
    ./flesh_interior_blended_pass_helper.cpp
    ./floatcombine.cpp
    ./floatcombine_autoexpose.cpp
    ./floattoscreen.cpp
    ./floattoscreen_vanilla.cpp
    ./gamecontrols.cpp
    ./HDRCombineTo16Bit.cpp
    ./HDRSelectRange.cpp
    ./hsl_filmgrain_pass1.cpp
    ./hsl_filmgrain_pass2.cpp
    ./hsv.cpp
    ./lightmappedgeneric_dx9.cpp
    ./lightmappedgeneric_dx9_helper.cpp
    ./lightmappedpaint_dx9_helper.cpp
    ./lightmappedreflective.cpp
    ./lightshafts.cpp
    ./lightshafts_helper.cpp
    ../../public/tier0/memoverride.cpp
    ./modulate_dx9.cpp
    ./MonitorScreen_dx9.cpp
    ./morphaccumulate_dx9.cpp
    ./morphweight_dx9.cpp
    ./motion_blur_dx9.cpp
    ./multiblend.cpp
    ./multiblend_dx9_helper.cpp
    ./object_motion_blur_dx9.cpp
    ./occlusion_dx9.cpp
    ./parallaxtest.cpp
    ./particlelitgeneric_dx9.cpp
    ./particlelitgeneric_dx9_helper.cpp
    ./particlesphere_dx9.cpp
    ./phong_dx9_helper.cpp
    ./projected.cpp
    ./projected_dx9_helper.cpp
    ./prototype.cpp
    ./prototype_helper.cpp
    ./refract.cpp
    ./refract_dx9_helper.cpp
    ./sample4x4.cpp
    ./sample4x4_blend.cpp
    ./screenspace_general.cpp
    ./shadow.cpp
    ./shadowbuild_dx9.cpp
    ./shadowmodel_dx9.cpp
    ./shatteredglass.cpp
    ./showz.cpp
    ./sky_hdr_dx9.cpp
    ./splinerope.cpp
    ./sprite_dx9.cpp
    ./spritecard.cpp
    ./teeth.cpp
    ./TreeLeaf.cpp
    ./unlitgeneric_dx9.cpp
    ./unlittwotexture_dx9.cpp
    ./vertexlitgeneric_dx9.cpp
    ./vertexlitgeneric_dx9_helper.cpp
    ./volume_clouds.cpp
    ./volume_clouds_helper.cpp
    ./vortwarp_dx9.cpp
    ./water.cpp
    ./windowimposter_dx90.cpp
    ./wireframe_dx9.cpp
    ./worldtwotextureblend.cpp
    ./worldvertextransition.cpp
    ./worldvertextransition_dx8_helper.cpp
    ./writestencil_dx9.cpp
    ./writez_dx9.cpp
)
set(HEADERFILES ./BaseVSShader.h
    ./cloak_dx9_helper.h
    ./common_flashlight_fxc.h
    ./common_fog_ps_forcevertexfog_fxc.h
    ./common_fog_ps_fxc.h
    ./common_fog_ps_supportsvertexfog_fxc.h
    ./common_fog_vs_forcevertexfog_fxc.h
    ./common_fog_vs_fxc.h
    ./common_fog_vs_supportsvertexfog_fxc.h
    ./common_fxc.h
    ./common_hlsl_cpp_consts.h
    ./common_lightmappedgeneric_fxc.h
    ./common_ps_fxc.h
    ./common_splinerope_fxc.h
    ./common_spritecard_fxc.h
    ./common_vertexlitgeneric_dx9.h
    ./common_vs_fxc.h
    ./flesh_helper.h
    ./fow_ps_fxc.h
    ./fow_vs_fxc.h
    ./lightmappedgeneric_dx9_helper.h
    ./lightmappedgeneric_ps2_3_x.h
    ./lightmappedpaint_dx9_helper.h
    ./lightshafts_helper.h
    ./multiblend_dx9_helper.h
    ./particlelitgeneric_dx9_helper.h
    ./phong_dx9_helper.h
    ./projected_dx9_helper.h
    ./refract_dx9_helper.h
    ./shader_constant_register_map.h
    ./spline_fxc.h
    ./vertexlitgeneric_dx9_helper.h
    ./volume_clouds_helper.h
    ./vortwarp_vs20_helper.h
#    ./water_ps2x_helper.h
    ./worldvertextransition_dx8_helper.h
)
set(SHADERSOURCE ./stdshader_dx9_20b.txt
    ./stdshader_dx9_20b_new.txt
    ./stdshader_dx9_30.txt
)
set(SHADERSOURCE___FXC ./aftershock_ps2x.fxc
    ./aftershock_vs20.fxc
#    ./AccumBuff4Sample_ps2x.fxc
#    ./accumbuff5sample_ps2x.fxc
#    ./appchooser360movie_ps2x.fxc
#    ./bik_ps2x.fxc
#    ./bik_vs20.fxc
#    ./blob_arm_ps20b.fxc
#    ./blob_arm_vs20.fxc
#    ./blob_ps30.fxc
#    ./blob_vs30.fxc
    ./Bloom_ps2x.fxc
    ./bloomadd_ps2x.fxc
    ./blurentity_ps2x.fxc
    ./BlurFilter_ps2x.fxc
    ./BlurFilter_vs20.fxc
    ./blurgaussian_3x3_ps2x.fxc
    ./bufferclearobeystencil_ps2x.fxc
    ./bufferclearobeystencil_vs20.fxc
    ./cable_ps2x.fxc
    ./cable_vs20.fxc
    ./clearalpha_ps2x.fxc
    ./cloak_blended_pass_ps2x.fxc
    ./cloak_blended_pass_vs20.fxc
    ./cloak_ps2x.fxc
    ./cloak_vs20.fxc
    ./colorcorrection_ps2x.fxc
    ./compositedeferredshadow_ps2x.fxc
    ./constant_color_ps2x.fxc
    ./copy_fp_rt_ps2x.fxc
#    ./customhero_ps2x.fxc
#    ./customhero_vs20.fxc
    ./DebugDrawDepth_ps2x.fxc
    ./DebugDrawDepth_vs20.fxc
    ./DebugDrawEnvmapMask_ps2x.fxc
    ./DebugDrawEnvmapMask_vs20.fxc
    ./debugluxel_ps2x.fxc
    ./debugluxel_vs20.fxc
    ./debugmorphaccumulator_ps30.fxc
    ./debugmorphaccumulator_vs30.fxc
    ./debugmrttexture_ps2x.fxc
    ./debugmrttexture_vs20.fxc
    ./debugtangentspace_vs20.fxc
    ./DebugTextureView_ps2x.fxc
    ./DebugTextureView_vs20.fxc
    ./decalmodulate_ps2x.fxc
    ./decalmodulate_vs20.fxc
    ./depth_of_field_ps20b.fxc
    ./depth_of_field_vs20.fxc
    ./depthtodestalpha_ps20b.fxc
    ./depthtodestalpha_vs20.fxc
    ./depthwrite_ps2x.fxc
    ./depthwrite_vs20.fxc
    ./Downsample_nohdr_ps2x.fxc
    ./Downsample_ps2x.fxc
    ./Downsample_vs20.fxc
    ./downsampledepth_extractnormal_ps2x.fxc
    ./emissive_scroll_blended_pass_ps2x.fxc
    ./emissive_scroll_blended_pass_vs20.fxc
    ./Engine_Post_ps2x.fxc
    ./eye_refract_ps2x.fxc
    ./eye_refract_vs20.fxc
    ./eyeglint_ps2x.fxc
    ./eyeglint_vs20.fxc
    ./eyes_flashlight_ps2x.fxc
    ./eyes_flashlight_vs20.fxc
    ./eyes_ps2x.fxc
    ./Eyes_vs20.fxc
    ./fade_blur_ps2x.fxc
    ./fillrate_ps2x.fxc
    ./fillrate_vs20.fxc
    ./filmdust_ps20.fxc
    ./filmgrain_ps20.fxc
    ./filmgrain_vs20.fxc
    ./flashlight_ps2x.fxc
    ./flesh_interior_blended_pass_ps2x.fxc
    ./flesh_interior_blended_pass_vs20.fxc
    ./flesh_ps30.fxc
    ./flesh_vs30.fxc
    ./floatcombine_autoexpose_ps2x.fxc
    ./floatcombine_ps2x.fxc
    ./floattoscreen_notonemap_ps2x.fxc
    ./floattoscreen_ps2x.fxc
    ./floattoscreen_vanilla_ps2x.fxc
    ./gamecontrols_ps20.fxc
    ./gamecontrols_vs20.fxc
    ./haloadd_ps2x.fxc
    ./HDRCombineTo16Bit_ps2x.fxc
    ./HDRCombineTo16Bit_vs20.fxc
    ./HDRSelectRange_ps2x.fxc
    ./HDRSelectRange_vs20.fxc
    ./hsl_filmgrain_pass1_ps2x.fxc
    ./hsl_filmgrain_pass2_ps2x.fxc
    ./hsv_ps2x.fxc
#    ./IceSurface_ps30.fxc
#    ./IceSurface_vs30.fxc
#    ./IntroScreenSpaceEffect_ps2x.fxc
    ./lightmappedgeneric_decal_ps2x.fxc
    ./lightmappedgeneric_decal_vs20.fxc
    ./lightmappedgeneric_flashlight_vs20.fxc
    ./lightmappedgeneric_ps2x.fxc
    ./lightmappedgeneric_vs20.fxc
    ./lightmappedpaint_ps2x.fxc
    ./lightmappedreflective_ps2x.fxc
    ./lightmappedreflective_vs20.fxc
    ./lightshafts_ps30.fxc
    ./lightshafts_vs30.fxc
    ./lpreview1_ps2x.fxc
    ./lpreview1_vs20.fxc
    ./lpreview_output_ps2x.fxc
    ./luminance_compare_ps2x.fxc
    ./modulate_ps2x.fxc
    ./monitorscreen_ps2x.fxc
    ./morphaccumulate_ps30.fxc
    ./morphaccumulate_vs30.fxc
    ./morphweight_ps30.fxc
    ./morphweight_vs30.fxc
    ./motion_blur_ps2x.fxc
    ./motion_blur_vs20.fxc
    ./multiblend_ps2x.fxc
    ./multiblend_vs20.fxc
    ./object_motion_blur_ps2x.fxc
    ./object_motion_blur_vs20.fxc
#    ./paintblob_ps20b.fxc
#    ./paintblob_vs20.fxc
    ./parallaxtest_ps30.fxc
    ./parallaxtest_vs30.fxc
    ./particlesphere_ps2x.fxc
    ./particlesphere_vs20.fxc
    ./phong_ps20b.fxc
    ./phong_vs20.fxc
#    ./portal_ps2x.fxc
#    ./portal_refract_ps2x.fxc
#    ./portal_refract_vs20.fxc
#    ./portal_vs20.fxc
#    ./portalstaticoverlay_ps2x.fxc
#    ./portalstaticoverlay_vs20.fxc
    ./projected_ps2x.fxc
    ./projected_vs20.fxc
#    ./proto_ice_ps20b.fxc
#    ./proto_ice_vs20.fxc
    ./prototype_ps20b.fxc
    ./prototype_vs20.fxc
    ./refract_ps2x.fxc
    ./Refract_vs20.fxc
    ./rendertargetblit_ps2x.fxc
    ./rendertargetblit_vs20.fxc
    ./sample4x4_blend_ps2x.fxc
    ./sample4x4_ps2x.fxc
    ./sample4x4delog_ps2x.fxc
    ./sample4x4log_ps2x.fxc
    ./sample4x4maxmin_ps2x.fxc
    ./screenspaceeffect_vs20.fxc
#    ./sfm_ambientocclusion_ps30.fxc
#    ./sfm_ambientocclusion_vs30.fxc
#    ./sfm_ao_blur_ps30.fxc
#    ./sfm_ao_blur_vs30.fxc
#    ./sfm_blur_ps30.fxc
#    ./sfm_combine_vs20.fxc
#    ./sfm_integercombine_ps2x.fxc
#    ./sfm_screenspace_vs30.fxc
#    ./sfm_shape_ps30.fxc
    ./shadow_ps2x.fxc
    ./shadow_vs20.fxc
    ./shadowbuildtexture_ps2x.fxc
    ./ShatteredGlass_ps2x.fxc
    ./ShatteredGlass_vs20.fxc
    ./showz_ps2x.fxc
    ./showz_vs11.fxc
    ./sky_hdr_compressed_ps2x.fxc
    ./sky_hdr_compressed_rgbs_ps2x.fxc
    ./sky_ps2x.fxc
    ./sky_vs20.fxc
    ./splinecard_vsxx.fxc
    ./splinerope_ps2x.fxc
    ./splinerope_vsxx.fxc
    ./sprite_ps2x.fxc
    ./sprite_vs20.fxc
    ./spritecard_ps2x.fxc
    ./spritecard_vsxx.fxc
    ./teeth_bump_ps2x.fxc
    ./teeth_bump_vs20.fxc
    ./teeth_flashlight_ps2x.fxc
    ./teeth_flashlight_vs20.fxc
    ./teeth_ps2x.fxc
    ./teeth_vs20.fxc
    ./TreeLeaf_ps2x.fxc
    ./TreeLeaf_vs20.fxc
    ./unlitgeneric_notexture_ps2x.fxc
    ./unlitgeneric_ps2x.fxc
    ./unlitgeneric_vs20.fxc
    ./unlittwotexture_ps2x.fxc
    ./unlittwotexture_vs20.fxc
    ./vertexlit_and_unlit_generic_bump_ps2x.fxc
    ./vertexlit_and_unlit_generic_bump_vs20.fxc
    ./vertexlit_and_unlit_generic_ps2x.fxc
    ./vertexlit_and_unlit_generic_vs20.fxc
    ./vertexlitgeneric_flashlight_vs20.fxc
    ./volume_clouds_ps2x.fxc
    ./volume_clouds_vs20.fxc
    ./vortwarp_ps2x.fxc
    ./vortwarp_vs20.fxc
    ./water_ps2x.fxc
    ./Water_vs20.fxc
    ./WaterCheap_ps2x.fxc
    ./WaterCheap_vs20.fxc
    ./white_ps2x.fxc
    ./windowimposter_ps2x.fxc
    ./windowimposter_vs20.fxc
    ./worldtwotextureblend_ps2x.fxc
    ./WorldVertexAlpha_ps2x.fxc
    ./writez_vs20.fxc
)
set(SHADERSOURCE___VSH ./ShadowModel.vsh
    ./vertexlitgeneric_flashlight_vs11.vsh
    ./WorldVertexTransition.vsh
)

set(SHADERSOURCE___PSH ./ShadowModel.psh
    ./WorldVertexTransition_Editor.psh
)
# We should get rid of this as soon as possible.
# The only purpose this has is to match as much as possible the original project file so you shouldn't rely on this for ANYTHING.
set(LINKLIBRARIES ../../lib/public/interfaces.lib
    ../../lib/public/mathlib.lib
# Shaderlib isn't compiled by default and will throw an error when generating the project. Since we eventually will remove this, it's no harm if we skip it for now
#    ../../lib/public/shaderlib.lib
    ../../lib/public/tier0.lib
    ../../lib/public/tier1.lib
    ../../lib/public/vstdlib.lib
#    ../../dx9sdk/lib/d3dx9.lib
)
set(SHADERTOOLS ./buildshaders.bat
#    ./buildallshaders.bat
    ../../devtools/bin/checkshaderchecksums.pl
    ../../devtools/bin/copyshaders.pl
    ../../devtools/bin/fxc_prep.pl
    ../../devtools/bin/psh_prep.pl
    ../../devtools/bin/updateshaders.pl
    ../../devtools/bin/valve_perl_helpers.pl
    ../../devtools/bin/vsh_prep.pl
)
set_source_files_properties(${LINKLIBRARIES} PROPERTIES HEADER_FILE_ONLY ON)
set_source_files_properties(${SHADERSOURCE} PROPERTIES HEADER_FILE_ONLY ON)
set_source_files_properties(${SHADERSOURCE___FXC} PROPERTIES HEADER_FILE_ONLY ON)
set_source_files_properties(${SHADERSOURCE___PSH} PROPERTIES HEADER_FILE_ONLY ON)
set_source_files_properties(${SHADERSOURCE___VSH} PROPERTIES HEADER_FILE_ONLY ON)
source_group("Header Files" FILES ${HEADERFILES})
source_group("Link Libraries" FILES ${LINKLIBRARIES})
source_group("Shader Source" FILES ${SHADERSOURCE})
source_group("Shader Source\\fxc" FILES ${SHADERSOURCE___FXC})
source_group("Shader Source\\psh" FILES ${SHADERSOURCE___PSH})
source_group("Shader Source\\vsh" FILES ${SHADERSOURCE___VSH})
source_group("" FILES ${SHADERTOOLS})

add_library(game_shader_dx9 SHARED ${SOURCEFILES}
    ${HEADERFILES}
    ${SHADERSOURCE}
    ${SHADERSOURCE___FXC}
    ${SHADERSOURCE___PSH}
    ${SHADERSOURCE___VSH}
    ${LINKLIBRARIES}
    ${SHADERTOOLS}
)
target_link_libraries(game_shader_dx9
    d3dx9
    interfaces
    mathlib
    shaderlib
    tier0
    tier1
    vstdlib
)
if(MSVC)
    if(MSVC_VERSION GREATER 1800)
        # Include legacy definitions if we are on Visual Studio 2015 or superior.
        set_target_properties(game_shader_dx9 PROPERTIES LINK_FLAGS "\"winmm.lib\" \"version.lib\" \"legacy_stdio_definitions.lib\" /SAFESEH:NO /LARGEADDRESSAWARE /SUBSYSTEM:WINDOWS /MANIFEST:NO /NODEFAULTLIB:libc /NODEFAULTLIB:libcd /NODEFAULTLIB:libcmtd")
    else()
        set_target_properties(game_shader_dx9 PROPERTIES LINK_FLAGS "\"winmm.lib\" \"version.lib\" /SAFESEH:NO /LARGEADDRESSAWARE /SUBSYSTEM:WINDOWS /MANIFEST:NO /NODEFAULTLIB:libc /NODEFAULTLIB:libcd /NODEFAULTLIB:libcmtd")
    endif()
endif()