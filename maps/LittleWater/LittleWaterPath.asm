    object_const_def
    const LWPathTree        ; 1
    const LWPathCamper1     ; 2
    const LWPathPokeBall    ; 3
    const LWPathYng1        ; 4
    const LWPathCamper2     ; 5
    const LWPathPotionItem  ; 6
    const LWPathCamper3     ; 7
    const LWPathHiker1      ; 8
    const LWPathMiniBoss    ; 9
    const LWPathLass        ; 10

LittleWaterPath_MapScripts:
    def_scene_scripts
    
    def_callbacks

LittleWaterPath_MapEvents:
    db 0, 0 ; filler

    def_warp_events

    def_coord_events

    def_bg_events
    bg_event 24, 21, BGEVENT_ITEM, LWPathHiddenRareCandy
    bg_event 15, 10, BGEVENT_ITEM, LWPathHiddenPotion

    def_object_events
	object_event 23,  14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Tree_LittleWater3, -1
    object_event 17, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP,  0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, LWPathCamper1Battle, -1
    object_event 19, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL,  0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LWPathItemballPokeBall, EVENT_ROUTE_31_POKE_BALL
    object_event 11, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT,  0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, LWPathYng1Battle, -1
    object_event 19, 5,  SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, LWPathCamper2Battle, -1
    object_event 12, 9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL,  0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LWPathItemballPotion, EVENT_UNION_CAVE_1F_POTION
    object_event 17, 14, YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, LWPathCamper3Battle, -1
    object_event 15, 8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, LWPathHiker1Battle, -1
    object_event 27, 9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, LWPathCoolTrainerBattle, -1
    object_event 18, 17, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LWPathBowLass, -1

LWPathBowLass:
    checkevent EVENT_BEAT_COOLTRAINERM_AARON
    iftrue .LassGiveBow
    showemote EMOTE_SAD, LWPathLass, 15
;    playsound SFX_BUBBLE
;    waitsfx
    faceplayer
    opentext
    writetext .BowLassAngryText
    yesorno
    iffalse .BowLassNo
    writetext .BowLassYesText
    showemote EMOTE_HEART, LWPathLass, 15
    closetext
    end
.LassGiveBow:
    checkevent EVENT_GOT_PINK_BOW_FROM_MARY
    iftrue .BowLassAfter
    setevent EVENT_GOT_PINK_BOW_FROM_MARY
    faceplayer
    opentext
    writetext .GiveBowText
    waitbutton
    verbosegiveitem PINK_BOW
    writetext .BowLassAfterText
    waitbutton
    showemote EMOTE_HEART, LWPathLass, 15
    closetext
    end
.BowLassAfter:
    faceplayer
    opentext
    writetext .BowLassAfterText
    showemote EMOTE_HEART, LWPathLass, 15
    closetext
    end
.BowLassNo:
    writetext .BowLassNoText
    showemote EMOTE_SAD, LWPathLass, 15
    closetext
    end
.BowLassAngryText:
    text "WHAA-HAAAA!!..."

    para "Oh! A RANGER!"

    para "You got to help me"
    line "RANGER, all the"
    cont "guys in our troop"
    cont "are picking on"
    cont "me because I'm the"
    cont "youngest, and the"
    cont "only girl!"

    para "It's all my"
    line "brother's fault! "
    cont "He's the meanest"
    cont "of the bunch!"

    para "You gotta go beat"
    line "them up for me!"
    cont "Would you do that,"
    cont "pretty please?"
    done
.BowLassNoText:
    text "WAH-HAAAA!"

    para "You're just as mean"
    line "as they are!!"
    done
.BowLassYesText:
    text "You will!!"
    para "THANK YOU, THANK"
    line "YOU, THANK YOU!!!"
    done
.BowLassAfterText:
    text "See you later,"
    line "BESTIE"
    done
.GiveBowText:
    text "YOU DID IT!"

    para "THANK YOU SO"
    line "MUCH, RANGER!"

    para "I want you to"
    line "have my favorite"
    cont "bow, because we're"
    cont "BEST FRIENDS!!"
    done

LWPathCoolTrainerBattle:
    trainer COOLTRAINERM, AARON,  EVENT_BEAT_COOLTRAINERM_AARON, LWAaronSeenTxt, LWAaronBeatTxt, 0, .Script
.Script:
    endifjustbattled
    opentext
    writetext LWAaronAfterTxt
    waitbutton
    closetext
    end
LWAaronSeenTxt:
    text "You want to pick a"
    line "fight with ME?"
    
    para "Did my ANNOYING"
    line "little sister"
    cont "send you?"

    para "No matter!"
    line "I'm always down"
    cont "to fight!"
    
    para "I'm the best there"
    line "is! I've earned all"
    cont "my badges. Not"
    cont "even a RANGER"
    cont "like you stands" 
    cont "a chance!"
    done
LWAaronBeatTxt:
    text "NO FAIR!"
    para "YOU CHEATED!"
    para "YOU TOTALLY"
    line "CHEATED!"
    para "...sniff..."
    line "These #MON"
    cont "were supposed to"
    cont "be the best."
    done
LWAaronAfterTxt:
    text "...sniff..."
    line "These #MON"
    cont "were supposed to"
    cont "be the best."

    para "My big bro raised"
    line "them for me,"
    cont "I can't believe"
    cont "they lost..."
    done

LWPathHiker1Battle:
    trainer HIKER, BENJAMIN,  EVENT_BEAT_HIKER_BENJAMIN, LWBenjaminSeenTxt, LWBenjaminBeatTxt, 0, .Script
.Script:
    endifjustbattled
    opentext
    writetext LWBenjaminBeatTxt
    waitbutton
    closetext
    end
LWBenjaminSeenTxt:
    text "These are good"
    line "kids, I taught "
    cont "them everything"
    cont "they know!"
    done
LWBenjaminBeatTxt:
    text "I think you could"
    line "teach me a thing"
    cont "or two."
    done

LWPathCamper3Battle:
    trainer CAMPER, ELLIOT,  EVENT_BEAT_CAMPER_ELLIOT, LWElliotSeenTxt, LWElliotBeatTxt, 0, .Script
.Script:
    endifjustbattled
    opentext
    writetext LWElliotBeatTxt
    waitbutton
    closetext
    end
LWElliotSeenTxt:
    text "I just earned my"
    line "evolution patch,"
    cont "you don't have"
    cont "a shot at beating"
    cont "me!"
    done
LWElliotBeatTxt:
    text "But I evolved my"
    line "#MON!"

    para "How could I loose?"
    done

LWPathCamper2Battle:
    trainer CAMPER, IVAN,  EVENT_BEAT_CAMPER_IVAN, LWIvanSeenTxt, LWIvanBeatTxt, 0, .Script
.Script:
    endifjustbattled
    opentext
    writetext LWIvanAfterTxt
    waitbutton
    closetext
    end
LWIvanSeenTxt:
    text "I'm going to earn"
    line "my bird #MON"
    para "watching badge,"
    line "but I got time"
    cont "for a battle!"
    done
LWIvanBeatTxt:
    text "I would of won"
    line "if I had found"
    cont "a SPEAROW!"
    done
LWIvanAfterTxt:
    text "I've heard SPEAROW"
    line "nest in the field"
    cont "to the south"
    cont "at night."

    para "I'll have to check"
    line "there next!"
    done

LWPathYng1Battle:
    trainer YOUNGSTER, SAMUEL,  EVENT_BEAT_YOUNGSTER_SAMUEL, LWSamuelSeenTxt, LWSamuelBeatTxt, 0, .Script
.Script:
    endifjustbattled
    opentext
    writetext LWSamuelBeatTxt
    waitbutton
    closetext
    end
LWSamuelSeenTxt:
    text "I totally forgot"
    line "my camping uniform."
    para "The camp master"
    line "chewed me out for"
    cont "it, so I gotta"
    cont "try extra hard!"
    done
LWSamuelBeatTxt:
    text "WOW!"
    line "Your #MON are."
    cont "really cool!"
    done

LWPathItemballPotion:
    itemball POTION, 2

LWPathItemballPokeBall:
    itemball POKE_BALL, 3

LWPathCamper1Battle:
    trainer CAMPER, ROLAND,  EVENT_BEAT_CAMPER_ROLAND, LWRolandSeenTxt, LWRolandBeatTxt, 0, .Script
.Script:
    endifjustbattled
    opentext
    writetext LWRolandBeatTxt
    waitbutton
    closetext
    end
LWRolandSeenTxt:
    text "I think your"
    line "a bit lost!"
    para "That means you"
    line "have time for"
    cont "a battle!"
    done
LWRolandBeatTxt:
    text "I'm a bit lost"
    line "too, to be honest."
    done

Tree_LittleWater3:
    fruittree FRUITTREE_LITTLEWATTER_3

LWPathHiddenRareCandy:
    hiddenitem RARE_CANDY, EVENT_ROUTE_28_HIDDEN_RARE_CANDY

LWPathHiddenPotion:
    hiddenitem POTION, EVENT_ROUTE_30_HIDDEN_POTION
