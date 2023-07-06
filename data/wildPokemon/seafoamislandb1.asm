IslandMonsB1:
	db $0A
	IF DEF(_ENCRED)
		db 37,PIDGEY     ; CCirno
		db 37,PARASECT     ; CLetty
		db 38,ELECTRODE     ; CEirin
		db 38,VENONAT     ; Letty
		db 35,PIDGEOTTO     ; Cirno
		db 36,EXEGGCUTE     ; Eirin
		db 36,PIDGEOTTO     ; Cirno
		db 35,VENONAT     ; Letty
		db 42,EXEGGCUTE     ; Eirin
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
