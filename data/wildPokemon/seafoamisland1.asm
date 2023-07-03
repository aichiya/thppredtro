IslandMons1:
	db $0F
	IF DEF(_ENCRED)
		db 30,PIDGEY     ; CCirno
		db 30,PARASECT     ; CLetty
		db 30,ELECTRODE     ; CEirin
		db 30,VENONAT     ; Letty
		db 28,PIDGEOTTO     ; Cirno
		db 21,EXEGGCUTE     ; Eirin
		db 29,PIDGEOTTO     ; Cirno
		db 28,VENONAT     ; Letty
		db 28,EXEGGCUTE     ; Eirin
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
