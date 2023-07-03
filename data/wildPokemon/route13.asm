Route13Mons:;joenote - added farfetchd
		db $14
	IF DEF(_ENCRED)
		db 24,GRIMER     ; CMystia
		db 25,KANGASKHAN     ; CAya
		db 24,ELECTRODE     ; CEirin
		db 22,RHYDON     ; CMedicine
		db 26,KANGASKHAN     ; CAya
		db 26,ELECTRODE     ; CEirin
		db 25,RHYDON     ; CMedicine
		db 28,MUK     ; Mystia
		db 30,HORSEA     ; Aya
		db 28,SNORLAX     ; Sanae
	ELIF DEF(_ENCBLUEJP)
		db 24, ODDISH
		db 25, PIDGEY
		db 24, VENONAT
		db 22, ODDISH
		db 26, VENONAT
		db 26, ODDISH
		db 25, DITTO
		db 28, GLOOM
		db 30, GLOOM
		db 27,FARFETCHD
	ELIF DEF(_ENCBLUEGREEN)
		db 24,BELLSPROUT
		db 25,PIDGEY
		db 24,VENONAT
		db 22,BELLSPROUT
		db 26,VENONAT
		db 26,BELLSPROUT
		db 25,DITTO
		db 28,WEEPINBELL
		db 30,WEEPINBELL
		db 27,FARFETCHD
	ENDC
	db $00
 
