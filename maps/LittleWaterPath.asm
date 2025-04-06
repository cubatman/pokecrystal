    object_const_def

LittleWaterPath_MapScripts:
    def_scene_scripts
    
    def_callbacks

LittleWaterPath_MapEvents:
    db 0, 0 ; filler

    def_warp_events

    def_coord_events

    def_bg_events

    def_object_events
	object_event 23,  14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Tree_LittleWater3, -1

Tree_LittleWater3:
    fruittree FRUITTREE_LITTLEWATTER_3
