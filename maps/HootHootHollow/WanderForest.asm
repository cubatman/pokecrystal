    object_const_def

WanderForest_MapScripts:
    def_scene_scripts
    
    def_callbacks

WanderForest_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event 11, 3, WANDER_FOREST, 2
    warp_event 12, 3, WANDER_FOREST, 1
    warp_event 20, 0, LITTLE_WATER_HOLLOW, 1

    def_coord_events

    def_bg_events
    bg_event 20, 5, BGEVENT_READ, StatueReadEvent
    bg_event 21, 5, BGEVENT_READ, StatueReadEvent

    def_object_events

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