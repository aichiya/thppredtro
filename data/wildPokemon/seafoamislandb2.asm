IslandMonsB2:
	db $0A
	IF DEF(_ENCRED)
		db 30,PIDGEY     ; CCirno
		db 30,PARASECT     ; CLetty
		db 32,ELECTRODE     ; CEirin
		db 32,VENONAT     ; Letty
		db 28,PIDGEOTTO     ; Cirno
		db 30,EXEGGCUTE     ; Eirin
		db 30,PIDGEOTTO     ; Cirno
		db 28,VENONAT     ; Letty
		db 30,EXEGGCUTE     ; Eirin
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
