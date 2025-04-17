; Johto Pokémon in grass

JohtoGrassWildMons:

	def_grass_wildmons HIDDEN_POWER_CLEARING
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn WEEDLE, MANKEY, HOOTHOOT, NATU, PARAS, BEEDRILL, BELLSPROUT, TANGELA, ELEKID
	db 7,  UNOWN	      ; 25% | 
	db 12, MANKEY	      ; 25% | 
	db 13, HOOTHOOT       ; 15% | 
	db 12, NATU	          ; 10% |
	db 14, BELLSPROUT     ; 10% |
	db 11, UNOWN 	      ; 5%  |
	db 12, BEEDRILL	      ; 4%  |
	db 16, TANGELA        ; 3%  | 
	db 13, PARAS          ; 2%  |
	db 12, STANTLER         ; 1%  |
	; day SENTRET, PIDGEY, CATERPIE / METAPOD, PSYDUCK, YANMA, FARFETCH_D
	db 7,  UNOWN	      ; 25% | 
	db 12, MANKEY	      ; 25% | 
	db 13, NIDORAN_M      ; 15% | 
	db 12, NATU 	      ; 10% |
	db 14, BELLSPROUT     ; 10% |
	db 13, UNOWN	      ; 5%  |
	db 12, BUTTERFREE     ; 4%  |
	db 16, TANGELA        ; 3%  | 
	db 13, GIRAFARIG      ; 2%  |
	db 16, GIRAFARIG      ; 1%  |
	; night WEEDLE / KAKUNA, HOOTHOOT, RATTATA, WOOPER, ODDISH
	db 7,  UNOWN	      ; 25% | 
	db 15, HOOTHOOT	      ; 25% | 
	db 16, PARAS          ; 15% | 
	db 12, DROWZEE        ; 10% |
	db 14, ODDISH         ; 10% |
	db 11, UNOWN 	      ; 5%  |
	db 12, BEEDRILL	      ; 4%  |
	db 16, TEDDIURSA       ; 3%  | 
	db 13, STANTLER        ; 2%  |
	db 12, MURKROW        ; 1%  |
	end_grass_wildmons

	def_grass_wildmons WANDER_FOREST
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn WEEDLE, MANKEY, HOOTHOOT, NATU, PARAS, BEEDRILL, BELLSPROUT, TANGELA, ELEKID
	db 7,  WEEDLE	      ; 25% | 
	db 12, MANKEY	      ; 25% | 
	db 13, HOOTHOOT       ; 15% | 
	db 12, NATU	          ; 10% |
	db 14, BELLSPROUT     ; 10% |
	db 11, PARAS 	      ; 5%  |
	db 12, BEEDRILL	      ; 4%  |
	db 16, TANGELA        ; 3%  | 
	db 13, PARAS          ; 2%  |
	db 12, ELEKID         ; 1%  |
	; day SENTRET, PIDGEY, CATERPIE / METAPOD, PSYDUCK, YANMA, FARFETCH_D
	db 7,  CATERPIE	      ; 25% | 
	db 12, MANKEY	      ; 25% | 
	db 13, NIDORAN_M      ; 15% | 
	db 12, NATU 	      ; 10% |
	db 14, BELLSPROUT     ; 10% |
	db 13, NIDORAN_F      ; 5%  |
	db 12, BUTTERFREE     ; 4%  |
	db 16, TANGELA        ; 3%  | 
	db 13, PARAS          ; 2%  |
	db 16, PARAS          ; 1%  |
	; night WEEDLE / KAKUNA, HOOTHOOT, RATTATA, WOOPER, ODDISH
	db 7,  SPINARAK	      ; 25% | 
	db 15, HOOTHOOT	      ; 25% | 
	db 16, PARAS          ; 15% | 
	db 12, DROWZEE        ; 10% |
	db 14, ODDISH         ; 10% |
	db 11, PARAS 	      ; 5%  |
	db 12, BEEDRILL	      ; 4%  |
	db 16, TEDDIURSA       ; 3%  | 
	db 13, MURKROW        ; 2%  |
	db 12, MURKROW        ; 1%  |
	end_grass_wildmons

	def_grass_wildmons LITTLE_WATER
	db 10 percent, 10 percent, 20 percent ; encounter rates: morn/day/nite
	; morn SENTRET, PIDGEY, CATERPIE / METAPOD, WOOPER, HOOTHOOT
	db 3, SENTRET	; 25% | 35%
	db 2, PIDGEY	; 25% | 35%
	db 2, CATERPIE	; 15% | 20%
	db 5, SENTRET	; 10%
	db 4, PIDGEY	; 10%
	db 3, CATERPIE	; 5% 
	db 3, WOOPER	; 4% |
	db 5, METAPOD   ; 3% | 5
	db 5, METAPOD   ; 2%
	db 9, HOOTHOOT  ; 1% |
	; day SENTRET, PIDGEY, CATERPIE / METAPOD, PSYDUCK, YANMA, FARFETCH_D
	db 3, SENTRET	; 25% | 35
	db 2, PIDGEY	; 25% | 30
	db 2, CATERPIE	; 15% | 18
	db 3, PSYDUCK	; 10% |
	db 5, SENTRET	; 10%
	db 4, PIDGEY	; 5%
	db 6, YANMA  	; 4% |
	db 3, CATERPIE  ; 3%
	db 6, METAPOD   ; 2% |
	db 5, FARFETCH_D ; 1% |
	; night WEEDLE / KAKUNA, HOOTHOOT, RATTATA, WOOPER, ODDISH
	db 2, WEEDLE	; 25% | 30%
	db 3, HOOTHOOT	; 25% | 42%
	db 5, HOOTHOOT	; 15% 
	db 5, KAKUNA	; 10% |
	db 3, RATTATA	; 10% |
	db 3, WEEDLE	; 5%
	db 3, WOOPER	; 4% |
	db 5, ODDISH	; 3% | 4%
	db 9, HOOTHOOT  ; 2%
	db 5, ODDISH	; 1%
	end_grass_wildmons

	def_grass_wildmons LITTLE_WATER_PATH
	db 10 percent, 10 percent, 20 percent ; encounter rates: morn/day/nite
	; morn
	db 3, SENTRET	; 25% | 35
	db 2, PIDGEY	; 25% | 35
	db 3, CATERPIE	; 15% |
	db 4, SENTRET	; 10%
	db 6, PIDGEY	; 10%
	db 6, METAPOD	; 5% |
	db 8, HOOTHOOT	; 4% |
	db 3, VENONAT	; 3% | 5
	db 3, VENONAT	; 2%
	db 3, SWINUB    ; 1% |
	; day
	db 3, SENTRET	; 25% | 35
	db 2, PIDGEY	; 25% | 35
	db 5, CATERPIE	; 15% |
	db 4, PIDGEY	; 10%
	db 6, SENTRET	; 10%
	db 6, METAPOD	; 5% |
	db 4, SPEAROW	; 4% | 5
	db 3, LEDYBA    ; 3% | 5
	db 3, LEDYBA    ; 2%
	db 4, SPEAROW   ; 1%
	; night
	db 2, WEEDLE	; 25% | 35
	db 3, HOOTHOOT	; 25% | 35
	db 3, ZUBAT 	; 15% |
	db 5, KAKUNA	; 10% |
	db 3, WEEDLE	; 10%
	db 4, HOOTHOOT 	; 5%  
	db 3, EKANS 	; 4% |
	db 5, HOOTHOOT 	; 3%
	db 9, HOOTHOOT  ; 2%
	db 5, ODDISH	; 1% |
	end_grass_wildmons

	def_grass_wildmons LITTLE_WATER_FIELD
	db 10 percent, 10 percent, 20 percent ; encounter rates: morn/day/nite
	; morn
	db 3, SENTRET	; 25% | 40
	db 2, SPEAROW	; 25% |
	db 3, CATERPIE	; 16% |
	db 5, SENTRET	; 10%
	db 6, LEDYBA	; 10% |
	db 4, SENTRET	; 5%
	db 5, METAPOD	; 4% |
	db 5, HOPPIP	; 3% | 5
	db 3, HOPPIP	; 2% 
	db 10, BUTTERFREE ; 1% |
	; day
	db 3, SENTRET	; 25% | 40
	db 2, PIDGEY	; 25% |
	db 3, SUNKERN	; 15% |
	db 5, SPEAROW	; 10% |
	db 6, SENTRET	; 10%
	db 5, SENTRET   ; 5 
	db 3, LEDYBA    ; 4  |
	db 3, HOPPIP    ; 3% |
	db 2, PICHU    ; 2% |
	db 10, BEEDRILL  ; 1% |
	; night
	db 4, WEEDLE	; 25% | 35
	db 3, ZUBAT 	; 25% |
	db 5, HOOTHOOT	; 15% |
	db 3, VENONAT	; 10% | 11
	db 3, WEEDLE	; 10%
	db 5, SPEAROW 	; 5% | 10
	db 4, EKANS 	; 4% |
	db 5, SPEAROW 	; 3%
	db 7, SPEAROW   ; 2%
	db 10, VENONAT	; 1%
	end_grass_wildmons

	def_grass_wildmons LITTLE_WATER_HOLLOW
	db 10 percent, 10 percent, 20 percent ; encounter rates: morn/day/nite
	; morn
	db 5, RATTATA	; 25% |
	db 5, SPEAROW	; 25% | 35
	db 3, CATERPIE	; 15% |
	db 8, PIDGEY	; 10% |
	db 6, PIDGEY	; 10%
	db 3, POLIWAG	; 5% |  9
	db 5, POLIWAG	; 4%
	db 7, SPINARAK	; 3% |
	db 6, WOOPER	; 2% |
	db 12, HOOTHOOT  ; 1% |
	; day
	db 5, RATTATA	; 25% |
	db 5, PIDGEY	; 25% |
	db 7, CATERPIE	; 15% |
	db 6, PSYDUCK	; 10% |
	db 6, WOOPER	; 10% |
	db 3, SPEAROW   ; 5% |12
	db 5, SPEAROW   ; 4%
	db 7, SPEAROW   ; 3%
	db 6, YANMA     ; 2% |
	db 11, FARFETCH_D ; 1% |
	; night
	db 6, WEEDLE	; 25% |
	db 5, HOOTHOOT	; 25% | 42
	db 7, HOOTHOOT	; 15%
	db 7, KAKUNA	; 10% |
	db 3, POLIWAG	; 10% |
	db 3, SPINARAK	; 5% | 12
	db 5, SPINARAK	; 4%
	db 7, SPINARAK	; 3%
	db 13, HOOTHOOT ; 2%
	db 5, ODDISH	; 1% |
	end_grass_wildmons

	def_grass_wildmons LITTLE_WATER_MAIN
	db 5 percent, 5 percent, 1 percent ; encounter rates: morn/day/nite
	; morn
	db 2, PIDGEY	; 25% 
	db 2, RATTATA	; 25% 
	db 2, PIDGEY	; 15% 
	db 3, PIDGEY	; 10% 
	db 2, PIDGEY	; 10%
	db 2, RATTATA	; 5% 
	db 2, SNUBBULL	; 4%
	db 2, PIDGEY	; 3% 
	db 2, PIDGEY	; 2% 
	db 3, SNUBBULL  ; 1% 
	; day
	db 2, PIDGEY	; 25% 
	db 2, RATTATA	; 25% 
	db 2, PIDGEY	; 15% 
	db 3, PIDGEY	; 10% 
	db 2, PIDGEY	; 10%
	db 2, RATTATA	; 5% 
	db 2, SNUBBULL	; 4%
	db 2, PIDGEY	; 3% 
	db 2, PIDGEY	; 2%
	db 3, SNUBBULL  ; 1% 
	; night
	db 6, HOOTHOOT	; 25%
	db 5, HOOTHOOT	; 25% 
	db 7, HOOTHOOT	; 15%
	db 7, HOOTHOOT	; 10%
	db 3, HOOTHOOT	; 10%
	db 3, HOOTHOOT	; 5% 
	db 5, MEOWTH	; 4%
	db 7, HOOTHOOT	; 3%
	db 13, HOOTHOOT ; 2%
	db 5, MEOWTH	; 1% 
	end_grass_wildmons

	db -1 ; end ; this stays at the end
