IslandMonsB3:
	db $0A
	IF DEF(_ENCRED)
		db 38,PARASECT     ; CLetty
		db 38,PIDGEY     ; CCirno
		db 40,ELECTRODE     ; CEirin
		db 40,VENONAT     ; Letty
		db 35,PIDGEOTTO     ; Cirno
		db 43,PIDGEOT     ; ECirno
		db 36,EXEGGCUTE     ; Eirin
		db 43,VENOMOTH     ; ELetty
		db 43,EXEGGUTOR     ; EEirin
		db 35,NINETALES     ; Sakuya
	ELIF DEF(_ENCBLUEJP)
		db 31, HORSEA
		db 31, SEEL
		db 33, HORSEA
		db 33, SEEL
		db 29, KRABBY
		db 31, STARYU
		db 31, KRABBY
		db 29, STARYU
		db 39, KINGLER
		db 37,DEWGONG
	ELIF DEF(_ENCBLUEGREEN)
		db 31,PSYDUCK
		db 31,SEEL
		db 33,PSYDUCK
		db 33,SEEL
		db 29,KRABBY
		db 31,STARYU
		db 31,KRABBY
		db 29,STARYU
		db 39,KINGLER
		db 37,DEWGONG
	ENDC
	db $00
