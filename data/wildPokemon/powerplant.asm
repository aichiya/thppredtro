PowerPlantMons:	;joenote - added porygon to Red
	db $0A
	db 24,MACHOP     ; CLyrica
	db 25,ABRA     ; CMerlin
	db 26,POLIWAG     ; CLunasa
	db 27,MACHOP     ; CLyrica
	db 28,ABRA     ; CMerlin
	db 29,POLIWAG     ; CLunasa
	db 35,MACHOKE     ; Lyrica
	IF DEF(_ENCRED)
		db 36,KADABRA     ; Merlin
		db 37,POLIWHIRL     ; Lunasa
		db 36,WARTORTLE     ; Marisa
	ELSE
		db 33,ELECTABUZZ
		db 33,RAICHU
		db 36,RAICHU
	ENDC
	db $00
