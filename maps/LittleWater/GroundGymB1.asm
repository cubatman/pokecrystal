    object_const_def
    const GroundGym_B1Rock
    const GroundGym_B1Boulder
    const GroundGym_Hiker3
    const GroundGym_CoolTrainer1
    const GroundGym_Firebreather1
    const GroundGym_Blackbelt
    const GroundGym_Hiker4
    const GroundGym_Youngster2

GroundGymB1_MapScripts:
    def_scene_scripts
    
    def_callbacks

GroundGymB1_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event 19, 5, GROUND_GYM_F1, 2
    warp_event 19, 11, GROUND_GYM_F1, 3
    warp_event 3, 1, GROUND_GYM_F1, 4
    warp_event 9, 7, GROUND_GYM_F1, 5


    def_coord_events

    def_bg_events

    def_object_events
    object_event  7, 8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GroundGymRock, -1
	object_event  14, 11, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GroundGymBoulder, -1
    object_event 6, 13, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, GroundGymHiker3, -1
    object_event 3, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, GroundGymCoolTrainer1, -1
    object_event 8, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0 ,-1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, GroundGymFirebreather1, -1
    object_event 9, 10, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0 ,-1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, GroundBlackbelt1, -1
    object_event 13, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0 ,-1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, GroundGymHiker4, -1
    object_event 17, 8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0 ,-1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, GroundGymYoungster2, -1

GroundGymYoungster2:
    trainer YOUNGSTER, ALBERT, EVENT_BEAT_YOUNGSTER_ALBERT, GroundGymNPCYoungster2Text, GroundGymNPCYoungster2BeatText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GroundGymNPCYoungster2Text
	waitbutton
	closetext
	end

GroundGymNPCYoungster2Text:
    text "It's scary here"
    line "in THE DEPTHS!"
    done

GroundGymNPCYoungster2BeatText:
    text "I'm not sure"
    line "I'm cut out"
    cont "for this."
    done

GroundGymHiker4:
    trainer HIKER, ANTHONY2, EVENT_BEAT_HIKER_ANTHONY2, GroundGymNPCHiker4Text, GroundGymNPCHiker4BeatText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GroundGymNPCHiker4BeatText
	waitbutton
	closetext
	end

GroundGymNPCHiker4Text:
    text "Some call me the"
    line "Mole Man,"
    cont "because I never"
    cont "leave the under-"
    cont "ground!"
    done

GroundGymNPCHiker4BeatText:
    text "I don't ever"
    line "want to leave!"
    done

GroundBlackbelt1:
    trainer BLACKBELT_T, KENJI1, EVENT_BEAT_BLACKBELT_KENJI, GroundGymNPCBlackbeltText, GroundGymNPCBlackbeltBeatText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GroundGymNPCBlackbeltBeatText
	waitbutton
	closetext
	end

GroundGymNPCBlackbeltText:
    text "HI-YAH!"

    para "Face me now,"
    line "apprentice!"
    done

GroundGymNPCBlackbeltBeatText:
    text "You have learned "
    line "well,"
    cont "my apprentice."

    para "..."

    para "What do you mean"
    line "I'm not a master!"

    para "That's outrageous!"
    done

GroundGymFirebreather1:
    trainer FIREBREATHER, OTIS, EVENT_BEAT_FIREBREATHER_OTIS, GroundGymNPCFirebreatherText, GroundGymNPCFirebreatherBeatText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GroundGymNPCFirebreatherAltText
	waitbutton
	closetext
	end

GroundGymNPCFirebreatherText:
    text "You have to be"
    line "careful when you"
    cont "play with fire!"
    done

GroundGymNPCFirebreatherBeatText:
    text "Burned down,"
    line "just like those"
    cont "houses outside..."
    done

GroundGymNPCFirebreatherAltText:
    text "The houses that"
    line "burned down out-"
    cont "side?"

    para "I didn't have"
    line "anything to do"
    cont "with it, I swear!"
    done

GroundGymCoolTrainer1:
    trainer COOLTRAINERF, GWEN, EVENT_BEAT_COOLTRAINERF_GWEN, GroundGymNPCCoolTrainerText, GroundGymNPCCoolTrainerBeatText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GroundGymNPCCoolTrainerBeatText
	waitbutton
	closetext
	end

GroundGymNPCCoolTrainerText:
    text "I'm a #MON"
    line "RANGER just like"
    cont "you!"

    para "I'm learning all"
    line "about caves from"
    cont "LEADER DOUGAN."
    done

GroundGymNPCCoolTrainerBeatText:
    text "Did you know"
    line "you can find"
    cont "WATER type"
    cont "#MON in caves?"

    para "There's still so"
    line "much to lean!"
    done

GroundGymHiker3:
    trainer HIKER, LEONARD, EVENT_BEAT_HIKER_LEONARD, GroundGymNPCHiker3Text, GroundGymNPCHiker3BeatText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GroundGymNPCHiker3BeatText
	waitbutton
	closetext
	end

GroundGymNPCHiker3Text:
    text "Dig. Dig. Dig."
    line "Dig..."

    para "We dig all day,"
    line "we dig all night"
    cont "We dig, we dig"
    cont "our entire lives"

    para "You never quite"
    line "know just what"
    cont "you'll find..."

    para "when you"
    line "Dig. Dig. Dig."
    cont "Dig..."
    done

GroundGymNPCHiker3BeatText:
    text "Dig. Dig. Dig."
    line "Dig..."
    done

GroundGymBoulder:
	jumpstd StrengthBoulderScript

GroundGymRock:
    jumpstd SmashRockScript