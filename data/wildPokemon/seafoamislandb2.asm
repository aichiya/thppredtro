IslandMonsB2:
	db $0A
	IF DEF(_ENCRED)
		db 37,PIDGEY     ; CCirno
		db 37,PARASECT     ; CLetty
		db 39,ELECTRODE     ; CEirin
		db 39,VENONAT     ; Letty
		db 33,PIDGEOTTO     ; Cirno
		db 35,EXEGGCUTE     ; Eirin
		db 35,PIDGEOTTO     ; Cirno
		db 36,VENONAT     ; Letty
		db 37,EXEGGCUTE     ; Eirin
		db 35,NINETALES     ; Sakuya
	ELIF DEF(_ENCBLUEJP)
		db 30,SEEL
		db 30, HORSEA
		db 32, SEEL
		db 32, HORSEA
		db 28, KRABBY
		db 30, SHELLDER
		db 30, KRABBY
		db 28, STARYU
		db 30, GOLBAT
		db 37, JYNX
	ELIF DEF(_ENCBLUEGREEN)
		db 30,SEEL
		db 30,PSYDUCK
		db 32,SEEL
		db 32,PSYDUCK
		db 28,KRABBY
		db 30,SHELLDER
		db 30,KRABBY
		db 28,STARYU
		db 30,GOLBAT
		db 37,GOLDUCK
	ENDC
	db $00
