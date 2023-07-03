IslandMonsB4:
	db $0A
	IF DEF(_ENCRED)
		db 31,PARASECT     ; CLetty
		db 31,PIDGEY     ; CCirno
		db 33,ELECTRODE     ; CEirin
		db 33,VENONAT     ; Letty
		db 29,PIDGEOTTO     ; Cirno
		db 39,PIDGEOT     ; ECirno
		db 31,EXEGGCUTE     ; Eirin
		db 39,VENOMOTH     ; ELetty
		db 39,EXEGGUTOR     ; EEirin
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
