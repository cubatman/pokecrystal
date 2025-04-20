TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2
	dw TreeMonSet_Lw
	dw TreeMonSet_HHH
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
;	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_Lw:
; common
	db 50, SPEAROW,    	10
	db 15, KAKUNA,      8
	db 15, METAPOD,     8
	db 10, HOOTHOOT,   	10
	db  5, SPINARAK,    12
	db  5, LEDYBA,     	12
	db -1
; rare
	db 50, PIDGEY,     10
	db 15, KAKUNA,	   10
	db 15, METAPOD,	   10
	db 10, AIPOM,      10
	db  5, PINECO,	   10
	db  5, PINECO, 	   10
	db -1

TreeMonSet_HHH:
; common
	db 50, HOOTHOOT,   		14
	db 15, PINECO,		   	13
	db 15, SPINARAK,    	13
	db 10, METAPOD,  		11
	db  5, KAKUNA,    		11
	db  5, KAKUNA,     		11
	db -1
; rare
	db 50, AIPOM,    		14
	db 15, BEEDRILL,		14
	db 15, BUTTERFREE, 		14
	db 10, EXEGGCUTE,  		11
	db  5, HERACROSS,  		14
	db  5, NOCTOWL,  		21
	db -1

TreeMonSet_Rock:
	db 90, KRABBY,     15
	db 10, SHUCKLE,    15
	db -1
