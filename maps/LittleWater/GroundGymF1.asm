    object_const_def
    const GROUNDGYM_DOUGAN
    const GROUNDGYM_BOULDER1
    const GROUNDGYM_ROCK1

GroundGymF1_MapScripts:
    def_scene_scripts
    
    def_callbacks

GroundGymF1_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event 17, 7, LITTLE_WATER_GYM, 1
    warp_event 19, 5, GROUND_GYM_B1, 1
    warp_event 19, 11, GROUND_GYM_B1, 2
    warp_event  3,  7, GROUND_GYM_B1, 3
    warp_event 11,  7, GROUND_GYM_B1, 4


    def_coord_events

    def_bg_events

    def_object_events ; IMPORTANT NOTE: Keep in order, and add object_const_def entries to top of script!!!
    object_event 11, 5, SPRITE_BROCK, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 2, GroundGymBattle, -1
	object_event 10, 8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GroundGymBoulder, -1
    object_event 10, 7, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GroundGymRock, -1


GroundGymBattle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BROCK
	iftrue .FightDone
	writetext DouganIntroText1
	waitbutton
    closetext
    playsound SFX_STRENGTH
    earthquake 80
    opentext
    writetext DouganIntroText2
	closetext
	winlosstext DouganLossText, 0
	loadtrainer CHUCK, CHUCK1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK
	opentext
	writetext GetDepthsBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	readvar VAR_BADGES
;	scall CianwoodGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM31_MUD_SLAP
	iftrue .AlreadyGotTM
;	setevent EVENT_BEAT_BLACKBELT_YOSHI
;	setevent EVENT_BEAT_BLACKBELT_LAO
;	setevent EVENT_BEAT_BLACKBELT_NOB
;	setevent EVENT_BEAT_BLACKBELT_LUNG
	writetext DouganExplainBadgeText
	promptbutton
	verbosegiveitem TM_MUD_SLAP
	iffalse .BagFull
	setevent EVENT_GOT_TM31_MUD_SLAP
	writetext DouganExplainTMText
	waitbutton
    playsound SFX_STRENGTH
    earthquake 80
    disappear GROUNDGYM_BOULDER1
    disappear GROUNDGYM_ROCK1
	closetext
	end

.AlreadyGotTM:
	writetext DouganAfterText
	waitbutton
.BagFull:
	closetext
	end

DouganExplainBadgeText:
    text "The DEPTHSBADGE"
    line "is really cool."
    done

DouganExplainTMText:
    text "Your #MON"
    line "can channel"
    cont "MIGHTY EARTH"
    cont "with this TM:"
    cont "MUD SLAP!"

    para "WHAT!?!"

    para "What do you"
    line "mean it's under-"
    cont "welming????"

    para "MUD SLAP moves"
    line "earth itself,"
    cont "and lowers your"
    cont "opponent's"
    cont "ACCURACY!"

    para "...and its"
    line "a little early"
    cont "to give you"
    cont "a truely powerful"
    cont "TM like EARTHQUAKE."
    done

DouganAfterText:
    text "Go, RANGER,"
    line "ascend the depths."
    
    para "You have a grand"
    line "adventure before"
    cont "you."
    cont "I know you can"
    cont "rise to great"
    cont "heights!"
    done

GetDepthsBadgeText:
    text "<PLAYER> received"
    line "DEPTHSBADGE."
    done

DouganLossText:
    text "Truely you are"
    line "Worthy, RANGER!"
    done

DouganIntroText1:
    text "Few have ventured"
    line "so deep into the"
    cont "depths!"

    para "Fewer make it"
    line "back out!!"

    para "Tell me RANGER,"
    
    para "Do you posess"
    line "the power?"
    
    para "The skills?"
    
    para "Are you worthy"
    line "enough to be a"
    cont "#MON RANGER?"
    
    para "You face now"
    line "DOUGAN OF"
    cont "THE DEPTHS!"
    cont "MASTER OF EARTH"
    done

DouganIntroText2:
    text "Let the chal-"
    line "lenge begin!"
    done