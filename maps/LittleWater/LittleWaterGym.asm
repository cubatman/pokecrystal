    object_const_def
    const PASS_BLOCKING_NPC
    const POKEFAN_NPC1
    const HIKER_NPC1
    const LW_GYM_BURGLAR

LittleWaterGym_MapScripts:
    def_scene_scripts
    scene_script SceneLWGymNoop, SCENE_LWGYM_NOOP1
;    scene_script SceneLWGymBeatBurglar, SCENE_LWGYM_BEATBURGLAR
;    scene_script SceneLWGymNoop, SCENE_LWGYM_NOOP2

    
    def_callbacks

SceneLWGymNoop:
    end

;SceneLWGymBeatBurglar:
;    call LWGymBeatBurglar
;    end

LittleWaterGym_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event 6, 15, GROUND_GYM_F1, 1
    warp_event 17, 15, LITTLE_WATER_BURNED_HOUSE, 1
    warp_event 25, 21, LITTLE_WATER_BURNED_HOUSE_2, 1
    warp_event 10, 5, SHUDDER_CAVE_ENTRANCE, 1

    def_coord_events

    def_bg_events
    bg_event 6, 22, BGEVENT_READ, GroundGymSign

    def_object_events
	object_event  26, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltYoshi1, -1
    object_event  22, 16, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerElise1, -1
    object_event  15, 17, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBrant, -1
    object_event  23, 21, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, BurglarDuncanBattle, -1

BurglarDuncanBattle:
    faceplayer LW_GYM_BURGLAR
    checkevent EVENT_GOT_TM_THIEF
    iftrue DuncanAfter

    checkevent EVENT_BEAT_BURGLAR_DUNCAN
    iftrue LWGymBeatBurglar
    
    opentext
    writetext BurglarDuncanSeenText
    closetext
    winlosstext DuncanBeatText, 0
	loadtrainer BURGLAR, DUNCAN
	startbattle
	reloadmapafterbattle
    setevent EVENT_BEAT_BURGLAR_DUNCAN

    sjump LWGymBeatBurglar

BurglarDuncanSeenText:
    text "What?"
    line "What's you"
    cont "doin' 'ere?"

    para "Yous gonna ruin"
    line "my big score!"
    done

DuncanBeatText:
    text "Aight, I yield!"
;    setscene SCENE_LWGYM_BEATBURGLAR
    done

DuncanAfterText:
    text "Glad yous see it"
    line "my way!"

    para "Nobody needs ta know"
    line "we was here..."
    done

LWGymBeatBurglar:
    opentext
    writetext .BurlarGivesThiefTxt
    yesorno
    iffalse .no
    verbosegiveitem TM_THIEF
    iffalse .NoRoomForThief
    writetext .yes
    closetext
    setevent EVENT_GOT_TM_THIEF
;    setscene SCENE_LWGYM_NOOP2
    end
.BurlarGivesThiefTxt:
    text "Aight, I yield!"

    para "Ya, I was tryna"
    line "nab somethin'"
    cont "good from 'ere."
    cont "but I's not the"
    cont "bloke who's"
    cont "lit 'em up!"
    
    para "Question is,"
    line "What yous doin'"
    cont "'ere?"

    para "I'll go's on my"
    line "way..."
    
    para "There's nothin'"
    line "good 'ere anyway."

    para "How's 'bout I "
    line "gives ya somethin'"
    cont "nice, and we"
    cont "forgets 'bout yous"
    cont "and me's seein' us"
    cont "'ere?"
    cont "'Kay?"
    done
.yes:
    text "Glad yous see it"
    line "my way!"

    para "Nobody needs ta "
    line "know we's" 
    cont "were here..."
    done
.NoRoomForThief:
    writetext .noTxt
;    setscene SCENE_LWGYM_NOOP2
    closetext
    end
.no:
    writetext .noTxt
;    setscene SCENE_LWGYM_NOOP2
    closetext
    end
.noTxt:
    text "Alright. No need ta'"
    line "get jumpy 'bout it."

    para "Think it ovah..."
    line "don' rat me out,"
    cont "and our deal stands."
    done

DuncanAfter:
    jumptext DuncanAfterText

GroundGymSign:
    jumptext .GroundGymSignRead
.GroundGymSignRead:
    text "Approach"
    line "THE DEPTHS!"
    
    para "Face LEADER"
    line "DOUGAN, the "
    cont "Ground Type Gym"
    cont "Leader just ahead!" 
    done

TrainerBrant:
    trainer HIKER, ANTHONY1, EVENT_BEAT_HIKER_ANTHONY, BrantSeentText, BrantBeatText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BrantAfterText
	waitbutton
	closetext
	end

BrantSeentText:
    text "Have to..."
    line "huff... huff..."

    para "heep in..."
    line "huff... huff..."

    para "Shape... huff..."

    para "Battling is..."
    line "huff... huff..."

    para "great..."
    line "huff... huff..."

    para "exercise!!"
    done

BrantBeatText:
    text "I'm too out of"
    line "breath... urgh."
    done

BrantAfterText:
    text "I traveled all the"
    line "way here, but I"
    cont "still can't beat"
    cont "LEADER DOUGAN."
    done

TrainerElise1:
    trainer POKEFANF, BEVERLY1, EVENT_BEAT_POKEFANF_BEVERLY, EliseSeenText1, EliseBeatenText1, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EliseAfterText1
	waitbutton
	closetext
	end

EliseSeenText1:
    text "They say something"
    line "terrible happened"
    cont "to these houses"
    cont "recently."

    para "You can't trust any-"
    line "body! I can't trust"
    cont "You!"

    para "AHHHHHHH!"
    done

EliseBeatenText1:
    text "Oh, your a #MON"
    line "RANGER?"

    para "I'm so sorry!"
    line "You can never be"
    cont "too careful!"
    done

EliseAfterText1:
    text "If you're a #MON"
    line "RANGER,"
    cont "maybe you can find"
    cont "out who burned"
    cont "down these houses."
    done

TrainerBlackbeltYoshi1:
	trainer BLACKBELT_T, YOSHI, EVENT_BEAT_BLACKBELT_YOSHI, BlackbeltYoshiSeenText1, BlackbeltYoshiBeatenText1, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltYoshiAfterText1
	waitbutton
	closetext
	end

BlackbeltYoshiSeenText1:
    text "The mountains hold"
    line "many dangerous"
    cont "#MON..."

    para "Are you up to the"
    line "challenge RANGER?"
    done

BlackbeltYoshiBeatenText1:
    text "I must train more!"
    done

BlackbeltYoshiAfterText1:
    text "Atop MT. CELESTIA"
    line "IS SOMETHING" ; TODO: better Dialoge
    cont "(Better Dialoge needed)"
    done
    