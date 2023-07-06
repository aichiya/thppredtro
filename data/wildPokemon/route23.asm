Route23Mons:
	db $0A
	IF DEF(_ENCRED)
		db 39,SHELLDER     ; EMystia
		db 39,MEOWTH     ; EChen
		db 39,JOLTEON     ; EHina
		db 42,KABUTOPS     ; EMomiji
		db 42,HAUNTER     ; EKeine
		db 42,SEADRA     ; EAya
		db 43,RAPIDASH     ; ERan
		db 43,MOLTRES     ; Kanako
		db 43,DRAGONITE     ; Suwako
		db 45,GENGAR     ; HKeine
	ELIF DEF(_ENCBLUEJP)
		db 26, SANDSHREW
		db 33,DITTO
		db 26,SPEAROW
		db 38,FEAROW
		db 38,DITTO
		db 38,FEAROW
		db 41, SANDSLASH
		db 43,DITTO
		db 41,FEAROW
		db 43,FEAROW
	ELIF DEF(_ENCBLUEGREEN)
		db 26,SANDSHREW
		db 33,DITTO
		db 26,SPEAROW
		db 38,FEAROW
		db 38,DITTO
		db 38,FEAROW
		db 41,SANDSLASH
		db 43,DITTO
		db 41,FEAROW
		db 43,FEAROW		
	ENDC
	db $00
