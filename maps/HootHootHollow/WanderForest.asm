    object_const_def

WanderForest_MapScripts:
    def_scene_scripts
;    scene_script WanderForestEnableUnown, SCENE_ENABLE_UNOWN
;    scene_script RuinsOfAlphInnerChamberStrangePresenceScene, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
    
    def_callbacks

;WanderForestEnableUnown:
;    setevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
;    clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_FISHER
;    end

;RuinsOfAlphInnerChamberStrangePresenceScene:
;	sdefer RuinsOfAlphInnerChamberStrangePresenceScript
;	end

WanderForest_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event 11, 3, WANDER_FOREST, 2
    warp_event 12, 3, WANDER_FOREST, 1
    warp_event 20, 0, LITTLE_WATER_HOLLOW, 1
    warp_event 15, 34, HIDDEN_POWER_CLEARING, 1

    def_coord_events
;    coord_event 15, 33, SCENE_ENABLE_UNOWN, EnableUnown

    def_bg_events
    bg_event 20, 5, BGEVENT_READ, StatueReadEvent
    bg_event 21, 5, BGEVENT_READ, StatueReadEvent

    def_object_events

;EnableUnown:
;    setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
;    setflag ENGINE_UNLOCKED_UNOWNS_A_TO_K
;    setevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
;    clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_FISHER
;    end

StatueReadEvent:
    jumptext .StatueReadText
.StatueReadText:
    text "It's a statue of"
    line "a great NOCTOWL"
    para "The plaque reads:"
    line "''Feeling lost?"
    para "The way home is"
    line "closer than you"
    cont "think!!''"
    done