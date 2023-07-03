Route23Mons:
	db $0A
	IF DEF(_ENCRED)
		db 36,SHELLDER     ; EMystia
		db 36,MEOWTH     ; EChen
		db 36,JOLTEON     ; EHina
		db 38,KABUTOPS     ; EMomiji
		db 38,HAUNTER     ; EKeine
		db 38,SEADRA     ; EAya
		db 41,RAPIDASH     ; ERan
		db 41,MOLTRES     ; Kanako
		db 41,DRAGONITE     ; Suwako
		db 43,GENGAR     ; HKeine
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
