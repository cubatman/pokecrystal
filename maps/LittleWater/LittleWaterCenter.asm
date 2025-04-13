    object_const_def
;	const MAPNAME_OBJECTNAME
    const LITTLEWATER_NURSE1
	const LITTLEWATER_CLERK1
	const LITTLEWATER_CLERK2


LittleWaterCenter_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

LittleWaterCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
    warp_event 3, 7, LITTLE_WATER_MAIN, 2
    warp_event 4, 7, LITTLE_WATER_MAIN, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 6, 2, OBJECTTYPE_SCRIPT, LittleWaterClerkScript
	bg_event 7, 2, OBJECTTYPE_SCRIPT, LittleWaterSpecialClerkScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
    object_event 3, 1, SPRITE_NURSE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LittleWaterNurseScript, -1
	object_event 6, 1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LittleWaterClerkScript, -1
	object_event 7, 1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LittleWaterSpecialClerkScript, -1

LittleWaterClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE
	closetext
	end

LittleWaterSpecialClerkScript:
	checkevent EVENT_BEAT_BROCK
	iftrue .ImprovedMart
	opentext 
	pokemart MARTTYPE_STANDARD, MART_LITTLE_WATER_SPECIAL_1
	closetext
	end
.ImprovedMart:
	opentext 
	pokemart MARTTYPE_STANDARD, MART_LITTLE_WATER_SPECIAL_2
	closetext
	end

LittleWaterNurseScript:   
    jumpstd PokecenterNurseScript
