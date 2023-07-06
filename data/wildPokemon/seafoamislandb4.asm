IslandMonsB4:
	db $0A
	IF DEF(_ENCRED)
		db 38,PARASECT     ; CLetty
		db 38,PIDGEY     ; CCirno
		db 40,ELECTRODE     ; CEirin
		db 40,VENONAT     ; Letty
		db 36,PIDGEOTTO     ; Cirno
		db 36,PIDGEOT     ; ECirno
		db 37,EXEGGCUTE     ; Eirin
		db 43,VENOMOTH     ; ELetty
		db 43,EXEGGUTOR     ; EEirin
		db 35,NINETALES     ; Sakuya
	ELIF DEF(_ENCBLUEJP)
		db 31, KRABBY
		db 31, STARYU
		db 33, KRABBY
		db 33, STARYU
		db 29, HORSEA
		db 31, SEEL
		db 31, HORSEA
		db 29, SEEL
		db 39, JYNX
		db 32,GOLBAT
	ELIF DEF(_ENCBLUEGREEN)
		db 31,KRABBY
		db 31,STARYU
		db 33,KRABBY
		db 33,STARYU
		db 29,PSYDUCK
		db 31,SEEL
		db 31,PSYDUCK
		db 29,SEEL
		db 39,GOLDUCK
		db 32,GOLBAT
	ENDC
	db $00
