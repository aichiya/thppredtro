IslandMonsB1:
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
		db 38,EXEGGCUTE     ; Eirin
		db 35,NINETALES     ; Sakuya
	ELIF DEF(_ENCBLUEJP)
		db 30, SHELLDER
		db 30, KRABBY
		db 32, STARYU
		db 32, KRABBY
		db 28, HORSEA
		db 30, SEEL
		db 30, HORSEA
		db 28, SEEL
		db 38, DEWGONG
		db 37, KINGLER
	ELIF DEF(_ENCBLUEGREEN)
		db 30,SHELLDER
		db 30,KRABBY
		db 32,STARYU
		db 32,KRABBY
		db 28,PSYDUCK
		db 30,SEEL
		db 30,PSYDUCK
		db 28,SEEL
		db 38,DEWGONG
		db 37,KINGLER
	ENDC
	db $00
