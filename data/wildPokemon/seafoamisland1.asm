IslandMons1:
	db $0F
	IF DEF(_ENCRED)
		db 37,PIDGEY     ; CCirno
		db 37,PARASECT     ; CLetty
		db 37,ELECTRODE     ; CEirin
		db 37,VENONAT     ; Letty
		db 35,PIDGEOTTO     ; Cirno
		db 34,EXEGGCUTE     ; Eirin
		db 36,PIDGEOTTO     ; Cirno
		db 38,VENONAT     ; Letty
		db 36,EXEGGCUTE     ; Eirin
		db 35,NINETALES     ; Sakuya
	ELIF DEF(_ENCBLUEJP)
		db 30,SEEL
		db 30, HORSEA
		db 30, STARYU
		db 30, KRABBY
		db 28, KRABBY
		db 21, ZUBAT
		db 29, GOLBAT
		db 28, SLOWPOKE
		db 28, STARYU
		db 38, SLOWBRO
	ELIF DEF(_ENCBLUEGREEN)
		db 30,SEEL
		db 30,PSYDUCK
		db 30,STARYU
		db 30,KRABBY
		db 28,KRABBY
		db 21,ZUBAT
		db 29,GOLBAT
		db 28,SLOWPOKE
		db 28,STARYU
		db 38,SLOWBRO
	ENDC
	db $00
