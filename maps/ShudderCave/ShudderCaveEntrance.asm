    object_const_def

ShudderCaveEntrance_MapScripts:
    def_scene_scripts
    
    def_callbacks
;    callback MAPCALLBACK_NEWMAP, EnableTyrogue2

;EnableTyrogue2:
 ;   setevent EVENT_GOT_TYROGUE_FROM_KIYO
  ;  end

ShudderCaveEntrance_MapEvents:
    db 0, 0 ; filler

    def_warp_events
	warp_event 5, 21, LITTLE_WATER_GYM, 4
    warp_event 35, 21, LITTLE_WATER_UNDER_BURNED_HOUSES, 9

    def_coord_events

    def_bg_events

    def_object_events