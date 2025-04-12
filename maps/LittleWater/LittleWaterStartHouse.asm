    object_const_def
    const RANGER_POKEBALL1
	const RANGER_POKEBALL2
	const RANGER_POKEBALL3

StartHouse_MapScripts:
    def_scene_scripts
	scene_script StartHouseNoop1Scene, SCENE_STARTHOUSE_NOOP
    
    def_callbacks

StartHouseNoop1Scene:
    end

CyndaquilPokeBallScript2:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript2
;	turnobject ELMSLAB_ELM, DOWN
	reanchormap
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	waitbutton
	closepokepic
	opentext
	writetext TakeCyndaquilText2
	yesorno
	iffalse DidntChooseStarterScript2
	disappear RANGER_POKEBALL1
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText2
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CYNDAQUIL
	writetext ReceivedStarterText2
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CYNDAQUIL, 8, BERRY
	closetext
;	readvar VAR_FACING
;	ifequal RIGHT, ElmDirectionsScript
;	applymovement PLAYER, AfterCyndaquilMovement
;	sjump ElmDirectionsScript
;	setflag ENGINE_POKEDEX
;	scall StartHouse_GivePokeballs
;	scall StartHouse_GivePotions
	setscene SCENE_STARTHOUSE_NOOP
	writetext EndGotStarterText
	waitbutton
	closetext
	sjump StartHouse_GiveDex 

TotodilePokeBallScript2:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript2
;	turnobject ELMSLAB_ELM, DOWN
	reanchormap
	pokepic TOTODILE
	cry TOTODILE
	waitbutton
	closepokepic
	opentext
	writetext TakeTotodileText2
	yesorno
	iffalse DidntChooseStarterScript2
	disappear RANGER_POKEBALL2
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText2
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, TOTODILE
	writetext ReceivedStarterText2
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke TOTODILE, 8, BERRY
	closetext
;	readvar VAR_FACING
;	ifequal RIGHT, ElmDirectionsScript
;	applymovement PLAYER, AfterCyndaquilMovement
;	sjump ElmDirectionsScript
;	setflag ENGINE_POKEDEX
;	scall StartHouse_GivePokeballs
;	scall StartHouse_GivePotions
	setscene SCENE_STARTHOUSE_NOOP
	writetext EndGotStarterText
	waitbutton
	closetext
	sjump StartHouse_GiveDex 

ChikoritaPokeBallScript2:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript2
;	turnobject ELMSLAB_ELM, DOWN
	reanchormap
	pokepic CHIKORITA
	cry CHIKORITA
	waitbutton
	closepokepic
	opentext
	writetext TakeChikoritaText2
	yesorno
	iffalse DidntChooseStarterScript2
	disappear RANGER_POKEBALL3
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText2
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CHIKORITA
	writetext ReceivedStarterText2
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CHIKORITA, 8, BERRY
	closetext
;	readvar VAR_FACING
;	ifequal RIGHT, ElmDirectionsScript
;	applymovement PLAYER, AfterCyndaquilMovement
;	sjump ElmDirectionsScript
;	setflag ENGINE_POKEDEX
;	scall StartHouse_GivePokeballs
;	scall StartHouse_GivePotions
	setscene SCENE_STARTHOUSE_NOOP
	writetext EndGotStarterText
	waitbutton
	closetext
	sjump StartHouse_GiveDex 

DidntChooseStarterScript2:
	writetext DidntChooseStarterText2
	waitbutton
	closetext
	end

TakeCyndaquilText2:
	text "Take"
	line "CYNDAQUIL, the"
	cont "fire #MON?"
	done

TakeTotodileText2:
	text "Take"
	line "TOTODILE, the"
	cont "water #MON?"
	done

TakeChikoritaText2:
	text "Take"
	line "CHIKORITA, the"
	cont "grass #MON?"
	done

ChoseStarterText2:
	text "ELM: I think"
	line "that's a great"
	cont "#MON too!"
	done

ReceivedStarterText2:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

DidntChooseStarterText2:
	text "ELM: Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

EndGotStarterText:
	text "Enjoy your"
	line "#MON!"
	done

LookAtElmPokeBallScript2:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end

StartHouse_GivePokeballs:
	itemball POKE_BALL, 10
	done

StartHouse_GivePotions:
;	opentext
;	getitemname STRING_BUFFER_4, POTION
;	jumpstd ReceiveItemScript
;	giveitem POTION
;	promptbutton
;	itemnotify
;	closetext
	itemball POTION
	done

StartHouse_GiveDex:
	setflag ENGINE_POKEDEX
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_EXPN_CARD
	setflag ENGINE_POKEGEAR
	end


StartHouse_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event 1, 7, LITTLE_WATER_MAIN, 1
    warp_event 2, 7, LITTLE_WATER_MAIN, 1

    def_coord_events

    def_bg_events

    def_object_events
    object_event 6,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyndaquilPokeBallScript2, EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	object_event 7,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TotodilePokeBallScript2, EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	object_event 8,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChikoritaPokeBallScript2, EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	object_event 1,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StartHouse_GivePokeballs, EVENT_RANGER_GIVE_POKEBALLS
	object_event 0,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, StartHouse_GivePotions, EVENT_RANGER_GIVE_POTIONS