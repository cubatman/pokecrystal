    object_const_def
    const GROUNDGYM_DOUGAN
    const GROUNDGYM_BOULDER1
    const GROUNDGYM_ROCK1
    const GROUNDGYM_ANNOUNCER
    const GROUNDGYM_HIKER1
    const GROUNDGYM_HIKER2

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
    object_event 18, 6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GroundGymAnnouncer, -1
    object_event 18, 14, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0 , -1, -1, 0, OBJECTTYPE_TRAINER, 1, GroundGymArnie, -1
    object_event 10, 13, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, -0, OBJECTTYPE_TRAINER, 2, GroundGymPhillip, -1 

GroundGymPhillip:
    trainer HIKER, PHILLIP, EVENT_BEAT_HIKER_PHILLIP, GroundGymNPCHiker2Text, GroundGymNPCHiker2BeatText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GroundGymNPCHiker2AfterText
	waitbutton
	closetext
	end

GroundGymNPCHiker2Text:
    text "With GROUND types"
    line "I'll soar to new"
    line "heights!"
    done

GroundGymNPCHiker2BeatText:
    text "I think I've only"
    line "dug myself deeper."
    done

GroundGymNPCHiker2AfterText:
    text "I think I've only"
    line "dug myself deeper."
    done

GroundGymArnie:
    trainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, GroundGymNPCHiker1Text, GroundGymNPCHiker1BeatText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GroundGymNPCHiker1AfterText
	waitbutton
	closetext
	end

GroundGymNPCHiker1Text:
    text "Ground type #MON"
    line "are the BEST!"
    done

GroundGymNPCHiker1BeatText:
    text "You still have nothing"
    line "on LEADER DOUGAN"
    done

GroundGymNPCHiker1AfterText:
    text "You still have nothing"
    line "on LEADER DOUGAN"
    done

GroundGymAnnouncer:
    faceplayer
    opentext 
    checkevent EVENT_BEAT_BROCK
    iftrue GroundGymAnnouncerAltText
    writetext GroundGymAnnouncerText
    waitbutton
    closetext
    end

GroundGymAnnouncerAltText:
    text "CONGRADULATIONS!"
    line "You have proven your-"
    cont "self a master of"
    cont "THE DEPTHS!"
    done

GroundGymAnnouncerText:
    text "Welcome to THE DEPTHS!"

    para "This is the gym of"
    line "The MASTER OF EARTH,"
    cont "DOUGAN!!"

    para "Prepare yourself to"
    line "take on the GROUND"
    cont "type #MON"
    cont "specialist!"

    para "Take the ladder into"
    line "The depths to begin!"
    done

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