#############################################################################
## Copyright (c) 2024, P7COMunications LLC                                  #
## Author(s): Francisco Medina <pancho7532@p7com.net>                       #
## Date: 22/Feb/2024                                                        #
#############################################################################
## Purpose: missionchooser CMake Project                                    #
#############################################################################
project(missionchooser)
include_directories(../../common
    ../../public
    ../../public/tier0
    ../../public/tier1
    .
    vgui
    vgui/dialogs
    TileSource
    keyvalues_editor
)
add_definitions(-DDLLNAME=${PROJECT_NAME} -DVPCGAME=${SOURCEMOD_NAME} -DVPCGAMECAPS=${SOURCEMOD_NAME_CAPS} -DMEMOVERRIDE_MODULE=${PROJECT_NAME})
if(MSVC)
    add_definitions(-D_USRDLL -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DCOMPILER_MSVC -DCOMPILER_MSVC32)
    link_directories(../../lib/common/.
        ../../lib/public/.
    )
endif()
set(SOURCEFILES ./asw_key_values_database.cpp
    ./asw_key_values_database.h
    ./asw_location_grid.cpp
    ./asw_location_grid.h
    ./asw_map_builder.cpp
    ./asw_map_builder.h
    ./asw_mission_chooser.cpp
    ./asw_mission_chooser.h
    ./asw_mission_chooser_source_local.cpp
    ./asw_mission_chooser_source_local.h
    ./asw_mission_text_database.cpp
    ./asw_mission_text_database.h
    ./asw_npcs.cpp
    ./asw_npcs.h
    ./asw_random_missions.cpp
    ./asw_random_missions.h
    ./asw_spawn_selection.cpp
    ./asw_spawn_selection.h
    ./asw_system.cpp
    ./asw_system.h
    ../../public/chunkfile.cpp
    ../../common/debug_dll_check.cpp
    ../../public/tier0/memoverride.cpp
    ./tile_check.cpp
    ./tile_check.h
    ./tilegen_core.h
    ./VMFExporter.cpp
    ./VMFExporter.h
)
set(TILESOURCE ./TileSource/LevelTheme.cpp
    ./TileSource/LevelTheme.h
    ./TileSource/MapLayout.cpp
    ./TileSource/MapLayout.h
    ./TileSource/Room.cpp
    ./TileSource/Room.h
    ./TileSource/RoomTemplate.cpp
    ./TileSource/RoomTemplate.h
    ./TileSource/TagList.cpp
    ./TileSource/TagList.h
)
set(KEYVALUES_EDITOR ./keyvalues_editor/kv_combo_leaf_panel.cpp
    ./keyvalues_editor/kv_combo_leaf_panel.h
    ./keyvalues_editor/kv_editor.cpp
    ./keyvalues_editor/kv_editor.h
    ./keyvalues_editor/kv_editor_base_panel.cpp
    ./keyvalues_editor/kv_editor_base_panel.h
    ./keyvalues_editor/kv_editor_frame.cpp
    ./keyvalues_editor/kv_editor_frame.h
    ./keyvalues_editor/kv_fit_children_panel.cpp
    ./keyvalues_editor/kv_fit_children_panel.h
    ./keyvalues_editor/kv_leaf_panel.cpp
    ./keyvalues_editor/kv_leaf_panel.h
    ./keyvalues_editor/kv_node_panel.cpp
    ./keyvalues_editor/kv_node_panel.h
    ./vgui/location_editor/location_editor_frame.cpp
    ./vgui/location_editor/location_editor_frame.h
    ./vgui/location_editor/location_layout_panel.cpp
    ./vgui/location_editor/location_layout_panel.h
    ./vgui/location_editor/mission_txt_leaf_panel.cpp
    ./vgui/location_editor/mission_txt_leaf_panel.h
    ./vgui/mission_editor/theme_room_picker.cpp
    ./vgui/mission_editor/theme_room_picker.h
)
set(LAYOUT_SYSTEM ./layout_system/tilegen_actions.cpp
    ./layout_system/tilegen_actions.h
    ./layout_system/tilegen_class_factories.cpp
    ./layout_system/tilegen_class_factories.h
    ./layout_system/tilegen_class_interfaces.h
    ./layout_system/tilegen_enum.cpp
    ./layout_system/tilegen_enum.h
    ./layout_system/tilegen_expressions.cpp
    ./layout_system/tilegen_expressions.h
    ./layout_system/tilegen_layout_system.cpp
    ./layout_system/tilegen_layout_system.h
    ./layout_system/tilegen_listeners.cpp
    ./layout_system/tilegen_listeners.h
    ./layout_system/tilegen_mission_preprocessor.cpp
    ./layout_system/tilegen_mission_preprocessor.h
    ./layout_system/tilegen_ranges.cpp
    ./layout_system/tilegen_ranges.h
    ./layout_system/tilegen_rule.cpp
    ./layout_system/tilegen_rule.h
)
set(LAYOUT_SYSTEM_EDITOR ./layout_system_editor/layout_system_kv_editor.cpp
    ./layout_system_editor/layout_system_kv_editor.h
    ./layout_system_editor/mission_panel.cpp
    ./layout_system_editor/mission_panel.h
    ./layout_system_editor/node_panel.cpp
    ./layout_system_editor/node_panel.h
    ./layout_system_editor/rule_instance_node_panel.cpp
    ./layout_system_editor/rule_instance_node_panel.h
    ./layout_system_editor/rule_instance_parameter_panel.cpp
    ./layout_system_editor/rule_instance_parameter_panel.h
    ./layout_system_editor/state_node_panel.cpp
    ./layout_system_editor/state_node_panel.h
)
set(VGUI_DIALOGS ./vgui/dialogs/ExitEditDialog.cpp
    ./vgui/dialogs/ExitEditDialog.h
    ./vgui/dialogs/RoomTemplateEditDialog.cpp
    ./vgui/dialogs/RoomTemplateEditDialog.h
    ./vgui/dialogs/ThemeEditDialog.cpp
    ./vgui/dialogs/ThemeEditDialog.h
    ./vgui/dialogs/ThemesDialog.cpp
    ./vgui/dialogs/ThemesDialog.h
    ./vgui/dialogs/TileGenDialog.cpp
    ./vgui/dialogs/TileGenDialog.h
)
set(VGUI ./vgui/MapLayoutPanel.cpp
    ./vgui/MapLayoutPanel.h
    ./vgui/missionchooser_tgaimagepanel.cpp
    ./vgui/missionchooser_tgaimagepanel.h
    ./vgui/npc_spawns_panel.cpp
    ./vgui/npc_spawns_panel.h
    ./vgui/PlacedRoomTemplatePanel.cpp
    ./vgui/PlacedRoomTemplatePanel.h
    ./vgui/RoomTemplateListPanel.cpp
    ./vgui/RoomTemplateListPanel.h
    ./vgui/RoomTemplatePanel.cpp
    ./vgui/RoomTemplatePanel.h
    ./vgui/ScrollingWindow.cpp
    ./vgui/ScrollingWindow.h
    ./vgui/tilegen_pages.cpp
    ./vgui/tilegen_pages.h
    ./vgui/ToggleExitsPanel.cpp
    ./vgui/ToggleExitsPanel.h
    ../../public/vgui_controls/vgui_controls.cpp
)
set(PUBLICHEADERFILES ../../public/chunkfile.h
    ../../public/missionchooser/iasw_mission_chooser.h
    ../../public/missionchooser/iasw_mission_chooser_source.h
    ../../public/missionchooser/iasw_random_missions.h
    ../../public/missionchooser/iasw_spawn_selection.h
    ../../public/tier1/interface.h
)
# We should get rid of this as soon as possible.
# The only purpose this has is to match as much as possible the original project file so you shouldn't rely on this for ANYTHING.
set(LINKLIBRARIES ../../lib/public/bitmap.lib
    ../../lib/public/dmxloader.lib
    ../../lib/public/fgdlib.lib
    ../../lib/public/interfaces.lib
    ../../lib/common/jpeglib.lib
    ../../lib/public/mathlib.lib
    ../../lib/public/matsys_controls.lib
    ../../lib/public/steam_api.lib
    ../../lib/public/tier0.lib
    ../../lib/public/tier1.lib
    ../../lib/public/tier2.lib
    ../../lib/public/tier3.lib
    ../../lib/public/vbsp2lib.lib
    ../../lib/public/vgui_controls.lib
    ../../lib/public/vstdlib.lib
    ../../lib/public/vtf.lib
)
set_source_files_properties(${LINKLIBRARIES} PROPERTIES HEADER_FILE_ONLY ON)
source_group("Source Files" FILES ${SOURCEFILES})
source_group("Source Files\\TileSource" FILES ${TILESOURCE})
source_group("Source Files\\keyvalues_editor" FILES ${KEYVALUES_EDITOR})
source_group("Source Files\\layout_system" FILES ${LAYOUT_SYSTEM})
source_group("Source Files\\layout_system_editor" FILES ${LAYOUT_SYSTEM_EDITOR})
source_group("Source Files\\vgui" FILES ${VGUI})
source_group("Source Files\\vgui\\Dialogs" FILES ${VGUI_DIALOGS})
source_group("Public Header Files" FILES ${PUBLICHEADERFILES})
source_group("Link Libraries" FILES ${LINKLIBRARIES})

add_library(${PROJECT_NAME} SHARED ${SOURCEFILES} ${TILESOURCE} ${KEYVALUES_EDITOR} ${LAYOUT_SYSTEM} ${LAYOUT_SYSTEM_EDITOR} ${VGUI} ${VGUI_DIALOGS} ${PUBLICHEADERFILES} ${LINKLIBRARIES})
target_link_libraries(${PROJECT_NAME}
    bitmap
    dmxloader
    fgdlib
    interfaces
    jpeglib
    mathlib
    matsys_controls
    steam_api
    tier0
    tier1
    tier2
    tier3
    vbsp2lib
    vgui_controls
    vstdlib
    vtf
)
if(MSVC)
    set_target_properties(${PROJECT_NAME} PROPERTIES LINK_FLAGS "/MAP /SUBSYSTEM:WINDOWS /MANIFEST:NO /NODEFAULTLIB:libc /NODEFAULTLIB:libcd /NODEFAULTLIB:libcmtd")
endif()