    object_const_def
    const PASS_BLOCKING_NPC
    const POKEFAN_NPC1
    const HIKER_NPC1

LittleWaterGym_MapScripts:
    def_scene_scripts
    
    def_callbacks

LittleWaterGym_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event 6, 15, GROUND_GYM_F1, 1

    def_coord_events

    def_bg_events

    def_object_events
	object_event  26, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltYoshi1, -1
    object_event  22, 16, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerElise1, -1
    object_event  15, 17, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_UP_DOWN, 3, 3, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBrant, -1

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
    