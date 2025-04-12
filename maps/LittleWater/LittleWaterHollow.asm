    object_const_def

LittleWaterHollow_MapScripts:
    def_scene_scripts
    
    def_callbacks

LittleWaterHollow_MapEvents:
    db 0, 0 ; filler

    def_warp_events

    def_coord_events

    def_bg_events

    def_object_events
	object_event 15,  15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Fruit_LittleWater4, -1
	object_event 18,  15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Fruit_LittleWater5, -1


Fruit_LittleWater4:
    fruittree FRUITTREE_LITTLEWATTER_4

Fruit_LittleWater5:
    fruittree FRUITTREE_LITTLEWATTER_5