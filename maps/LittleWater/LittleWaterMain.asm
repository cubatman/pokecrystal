    object_const_def

LittleWaterMain_MapScripts:
    def_scene_scripts
    
    def_callbacks

LittleWaterMain_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event 12, 7, START_HOUSE, 1
    warp_event 3, 9, LITTLE_WATER_CENTER, 1

    def_coord_events

    def_bg_events

    def_object_events
	object_event 6,  9, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Tree_LittleWater6, -1

Tree_LittleWater6:
    fruittree FRUITTREE_LITTLEWATTER_6