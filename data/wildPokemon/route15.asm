Route15Mons:
	db $0F
	IF DEF(_ENCRED)
		db 26,RHYDON     ; CMedicine
		db 28,GRIMER     ; CMystia
		db 25,ELECTRODE     ; CEirin
		db 28,RHYDON     ; CMedicine
		db 25,GRIMER     ; CMystia
		db 29,ELECTRODE     ; CEirin
		db 28,MUK     ; Mystia
		db 30,CHANSEY     ; Medicine
		db 29,EXEGGCUTE     ; Eirin
		db 30,SNORLAX     ; Sanae
	ELIF DEF(_ENCBLUEJP)
		db 24, ODDISH
		db 26, DITTO
		db 23, PIDGEY
		db 26, VENONAT
		db 22, ODDISH
		db 28, VENONAT
		db 26, ODDISH
		db 30, GLOOM
		db 28, PIDGEOTTO
		db 30, PIDGEOTTO
	ELIF DEF(_ENCBLUEGREEN)
		db 24,BELLSPROUT
		db 26,DITTO
		db 23,PIDGEY
		db 26,VENONAT
		db 22,BELLSPROUT
		db 28,VENONAT
		db 26,BELLSPROUT
		db 30,WEEPINBELL
		db 28,PIDGEOTTO
		db 30,PIDGEOTTO
	ENDC
	db $00
