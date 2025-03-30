MACRO mon_prob
; percent, index
	db \1, \2 * 2
ENDM

GrassMonProbTable:
	table_width 2
	mon_prob 25,  0 ; 25% chance
	mon_prob 50,  1 ; 25% chance
	mon_prob 65,  2 ; 15% chance
	mon_prob 75,  3 ; 10% chance
	mon_prob 85,  4 ; 10% chance
	mon_prob 92,  5 ; 7% chance
	mon_prob 97,  6 ; 5% chance
	mon_prob 100, 7 ; 3% chance
	assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 2
	mon_prob 60,  0 ; 60% chance
	mon_prob 90,  1 ; 30% chance
	mon_prob 100, 2 ; 10% chance
	assert_table_length NUM_WATERMON
