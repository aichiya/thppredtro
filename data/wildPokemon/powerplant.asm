PowerPlantMons:	;joenote - added porygon to Red
	db $0A
	db 34,MACHOP     ; CLyrica
	db 35,ABRA     ; CMerlin
	db 36,POLIWAG     ; CLunasa
	db 37,MACHOP     ; CLyrica
	db 38,ABRA     ; CMerlin
	db 39,POLIWAG     ; CLunasa
	db 40,MACHOKE     ; Lyrica
	IF DEF(_ENCRED)
		db 40,KADABRA     ; Merlin
		db 40,POLIWHIRL     ; Lunasa
		db 35,WARTORTLE     ; Marisa
	ELSE
		db 33,ELECTABUZZ
		db 33,RAICHU
		db 36,RAICHU
	ENDC
	db $00
