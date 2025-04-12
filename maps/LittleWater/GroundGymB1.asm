    object_const_def

LittleWaterField_MapScripts:
    def_scene_scripts
    
    def_callbacks

LittleWaterField_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event 19, 5, GROUND_GYM_F1, 2
    warp_event 19, 11, GROUND_GYM_F1, 3
    warp_event 3, 1, GROUND_GYM_F1, 4
    warp_event 9, 7, GROUND_GYM_F1, 5


    def_coord_events

    def_bg_events

    def_object_events
    object_event  7, 8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GroundGymRock, -1
	object_event  14, 11, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GroundGymBoulder, -1


GroundGymBoulder:
	jumpstd StrengthBoulderScript

GroundGymRock:
    jumpstd SmashRockScript