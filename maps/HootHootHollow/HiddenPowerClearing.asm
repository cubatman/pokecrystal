    object_const_def

HiddenPowerClearing_MapScripts:
    def_scene_scripts
    
    def_callbacks
    const HiddenPowerClearingItemball

HiddenPowerClearing_MapEvents:
    db 0, 0 ; filler

    def_warp_events
    warp_event 5, 1, WANDER_FOREST, 4
    warp_event 6, 1, WANDER_FOREST, 4

    def_coord_events

    def_bg_events
    bg_event 8, 7, BGEVENT_READ, StatueReadEventHiddnePowerClearing
    bg_event 9, 7, BGEVENT_READ, StatueReadEventHiddnePowerClearing
    bg_event 8, 6, BGEVENT_READ, StatueReadEventHiddnePowerClearing
    bg_event 9, 6, BGEVENT_READ, StatueReadEventHiddnePowerClearing


    def_object_events
    object_event 6, 9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GiveHiddenPower, EVENT_GOT_TM10_HIDDEN_POWER

GiveHiddenPower:
    itemball TM_HIDDEN_POWER

StatueReadEventHiddnePowerClearing:
    jumptext .StatueReadText
.StatueReadText:
    text "It's a statue of"
    line "a great NOCTOWL"
    para "The plaque reads:"
    line "''Great power"
    cont "lies within.''"
    done