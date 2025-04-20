	object_const_def

LittleWaterBurnedHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

LittleWaterBurnedHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 2, 9, LITTLE_WATER_GYM, 3
    warp_event 3, 9, LITTLE_WATER_GYM, 3

	warp_event 4, 2, LITTLE_WATER_UNDER_BURNED_HOUSES, 5 ;3
	warp_event 5, 2, LITTLE_WATER_UNDER_BURNED_HOUSES, 5 ;4
	warp_event 4, 3, LITTLE_WATER_UNDER_BURNED_HOUSES, 5 ;5
	warp_event 5, 3, LITTLE_WATER_UNDER_BURNED_HOUSES, 5 ;6

	warp_event 6, 1, LITTLE_WATER_UNDER_BURNED_HOUSES, 6 ;7
	warp_event 7, 1, LITTLE_WATER_UNDER_BURNED_HOUSES, 6 ;8
	warp_event 8, 1, LITTLE_WATER_UNDER_BURNED_HOUSES, 6 ;9
	warp_event 9, 1, LITTLE_WATER_UNDER_BURNED_HOUSES, 6 ;10

	warp_event 10, 6, LITTLE_WATER_UNDER_BURNED_HOUSES, 7 ;11
	warp_event 11, 6, LITTLE_WATER_UNDER_BURNED_HOUSES, 7 ;12
	warp_event 10, 7, LITTLE_WATER_UNDER_BURNED_HOUSES, 7 ;13
	warp_event 11, 7, LITTLE_WATER_UNDER_BURNED_HOUSES, 7 ;14

	warp_event 1, 2, LITTLE_WATER_UNDER_BURNED_HOUSES, 8 ;15

	def_coord_events

	def_bg_events

	def_object_events