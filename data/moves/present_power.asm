PresentPower:
	; chance, power
	db 40 percent,     40 ; 40% chance
	db 60 percent + 1, 60 ; 20% chance
	db 75 percent,     80 ; 15% chance
	db 85 percent,    100 ; 10% chance
	db 95 percent,    120 ; 10% chance
	db -1                 ; 5% chance to heal instead (removed)
