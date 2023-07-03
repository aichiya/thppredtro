IslandMonsB3:
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
