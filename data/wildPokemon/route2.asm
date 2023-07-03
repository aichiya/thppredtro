Route2Mons:
	db $19
	IF DEF(_ENCRED)
		db 3,DIGLETT     ; CChen
		db 3,GRIMER     ; CMystia
		db 4,DIGLETT     ; CChen
		db 4,GRIMER     ; CMystia
		db 5,WEEDLE     ; Fairy
		db 3,WEEDLE     ; Fairy
		db 4,RATTATA     ; CStar
		db 4,FEAROW     ; CLuna
		db 4,PIKACHU     ; CSunny
		db 5,RHYDON     ; CMedicine
	ELIF DEF(_ENCBLUEJP)
		db 3,RATTATA
		db 3,PIDGEY
		db 4,PIDGEY
		db 4,RATTATA
		db 5,PIDGEY
		db  3, CATERPIE
		db  2, RATTATA
		db  5, RATTATA
		db  4, CATERPIE
		db  5, CATERPIE
	ELIF DEF(_ENCBLUEGREEN)
		db 3,RATTATA
		db 3,PIDGEY
		db 4,PIDGEY
		db 4,RATTATA
		db 5,PIDGEY
		db 3,CATERPIE
		db 2,RATTATA
		db 5,RATTATA
		db 4,CATERPIE
		db 5,CATERPIE
	ENDC
	db $00
