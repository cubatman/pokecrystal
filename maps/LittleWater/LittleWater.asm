    object_const_def

LittleWater_MapScripts:
    def_scene_scripts
    
    def_callbacks

LittleWater_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event  3, 13, RANGER_FACILITY, 1 

    def_coord_events

    def_bg_events
    bg_event 37, 21, BGEVENT_READ, HollowWarningSign

    def_object_events
	object_event 31,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Tree_LittleWater1, -1
	object_event 32,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Tree_LittleWater2, -1
    object_event 32, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, LWYoungster1, -1
    object_event 36, 8,  SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -2, -2, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LWLassText, -1
    object_event 30, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, -1, -1, 1, 1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, LWYoungster2, -1
    object_event 39, 22, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LWHollowWarn, -1
    object_event 13, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, LWBugCatcher, -1

LWHollowWarn:
    jumptextfaceplayer HootHootHollowAdvisoryTxt

HootHootHollowAdvisoryTxt:
    text "I'm just standing here"
    done

LWBugCatcher:
    trainer BUG_CATCHER, BUG_CATCHER_BENNY,  EVENT_BEAT_BUG_CATCHER_BENNY, LWBennySeenTxt, LWBennyBeatTxt, 0, .Script

.Script:
    endifjustbattled
    opentext
    writetext LWBennyTxt
    waitbutton
    closetext
    end

LWBennySeenTxt:
    text "I have the most"
    line "#MON!"
    para "There's no way"
    line "I loose!"
    done

LWBennyBeatTxt:
    text "I can't believe"
    line "I lost again"
    done

LWBennyTxt:
    text "There's a scary"
    line "NOCTOWL in"
    cont "Hoot-Hoot Hollow."
    cont "I'm trying raise"
    cont "strong #MON"
    cont "so I can explore"
    cont "down there."
    done

HollowWarningSign:
    jumptext .warnsigntxt

.warnsigntxt:
    text "SOUTH:"
    line "Hoot-Hoot Hollow"
    para "WARNING:"
    line "Dangerous #MON"
    cont "KEEP OUT!"
    done

LWYoungster2:
    trainer YOUNGSTER, ADRIAN,  EVENT_BEAT_YOUNGSTER_ADRIAN, LWAdrianSeenTxt, LWAdrianBeatTxt, 0, .Script

.Script:
    endifjustbattled
    opentext
    writetext LWAdrianTxt
    waitbutton
    closetext
    end

LWAdrianSeenTxt:
    text "Face me and"
    line "my mighty"
    cont "Farfetch'd!"
    done

LWAdrianBeatTxt:
    text "Ok, I lied about"
    line "having Farfetch'd."
    cont "But I really did"
    cont "see one here!"
    done

LWAdrianTxt:
    text "I really have"
    line "seen Farfetch'd"
    cont "around here,"
    cont "but nobody"
    cont "believes me..."
    done

LWLassText:
    jumptextfaceplayer .ScriptTxt

.ScriptTxt
    text "My brother says"
    line "he found Farfetch'd"
    cont "here."
    cont "I think he's a big"
    cont "fat liar!!"
    done

LWYoungster1:
    trainer YOUNGSTER, POLO, EVENT_BEAT_YOUNGSTER_POLO, LWYoungster1SeenTxt, LWYoungster1BeatenTxt, 0, .Script

.Script:
    endifjustbattled
    opentext
    writetext LWYoungster1AfterTxt
    waitbutton
    closetext
    end

LWYoungster1SeenTxt:
    text "Are you a #MON"
    line "Ranger!?"
    cont "I bet I could"
    cont "beat you!"
    cont "Let's battle!!"
    done

LWYoungster1BeatenTxt:
    text "WOW!!"
    cont "You're going"
    cont "to be a great"
    cont "#MON Ranger!"
    done

LWYoungster1AfterTxt:
    text "I want to be"
    line "a #MON Ranger"
    cont "too someday!"
    done


Tree_LittleWater1:
    fruittree FRUITTREE_LITTLEWATTER_1

Tree_LittleWater2:
    fruittree FRUITTREE_LITTLEWATTER_2
