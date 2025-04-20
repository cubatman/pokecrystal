MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map LITTLE_WATER,           	  TREEMON_SET_LW
	treemon_map LITTLE_WATER_MAIN,  	      TREEMON_SET_LW
	treemon_map LITTLE_WATER_PATH,            TREEMON_SET_LW
	treemon_map LITTLE_WATER_FIELD,           TREEMON_SET_LW
	treemon_map LITTLE_WATER_GYM,             TREEMON_SET_LW
	treemon_map LITTLE_WATER_HOLLOW,          TREEMON_SET_LW
	treemon_map WANDER_FOREST,				  TREEMON_SET_HHH
	treemon_map HIDDEN_POWER_CLEARING, 		  TREEMON_SET_HHH
	db -1

RockMonMaps:
	treemon_map ROUTE_26,             		  TREEMON_SET_ROCK

	db -1
