ForestMons:
	db $08
	IF DEF(_ENCRED)
		db 4,WEEDLE     ; Fairy
		db 5,WEEDLE     ; Fairy
		db 6,WEEDLE     ; Fairy
		db 5,RATTATA     ; CStar
		db 5,FEAROW     ; CLuna
		db 5,PIKACHU     ; CSunny
		db 6,RATTATA     ; CStar
		db 6,FEAROW     ; CLuna
	ELIF DEF(_ENCBLUEJP)
		db  4, CATERPIE
		db  5, METAPOD
		db  3, CATERPIE
		db  5, CATERPIE
		db  4, METAPOD
		db  6, METAPOD
		db  4, KAKUNA
		db  3, WEEDLE
	ELIF DEF(_ENCBLUEGREEN)
		db 4,CATERPIE
		db 5,METAPOD
		db 3,CATERPIE
		db 5,CATERPIE
		db 4,METAPOD
		db 6,METAPOD
		db 4,KAKUNA
		db 3,WEEDLE
	ENDC
	db 6,PIKACHU     ; CSunny
	db 7,PERSIAN     ; CAlice
	db $00
