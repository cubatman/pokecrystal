	object_const_def


RangerFacility_MapScripts:
	def_scene_scripts
	scene_script RangerFacilityNoop1Scene, SCENE_RANGERFACILITY_NOOP

	def_callbacks

RangerFacilityNoop1Scene:
	end

RangerFacility_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event  8, 13, GLOBAL_TERMINAL_1F, 1
;	warp_event  4, 19, LITTLE_WATER, 1
;	warp_event  5, 19, LITTLE_WATER, 1


	def_coord_events

	def_bg_events

	def_object_events
;	object_event 24, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityRocketScoutScript, EVENT_GOLDENROD_CITY_ROCKET_SCOUT
;	object_event 29,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyndaquilPokeBallScript2, EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
;	object_event 30,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TotodilePokeBallScript2, EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
;	object_event 31,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChikoritaPokeBallScript2, EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
;	object_event 29,  12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RangerFacility_GivePokeballs, EVENT_RANGER_GIVE_POKEBALLS
;	object_event 30,  12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RangerFacility_GivePotions, EVENT_RANGER_GIVE_POTIONS

