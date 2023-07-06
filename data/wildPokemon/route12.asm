Route12Mons:;joenote - added farfetchd
	db $0F
	IF DEF(_ENCRED)
		db 26,OMASTAR     ; CMomiji
		db 27,KANGASKHAN     ; CAya
		db 26,ELECTRODE     ; CEirin
		db 24,OMASTAR     ; CMomiji
		db 27,KANGASKHAN     ; CAya
		db 27,ELECTRODE     ; CEirin
		db 29,KABUTO     ; Momiji
		db 30,HORSEA     ; Aya
		db 26,KANGASKHAN     ; CAya
		db 30,SNORLAX     ; Sanae
	ELIF DEF(_ENCBLUEJP)
		db 24, ODDISH
		db 25, PIDGEY
		db 24, VENONAT
		db 22, ODDISH
		db 26, VENONAT
		db 26, ODDISH
		db 27, PIDGEY
		db 28, GLOOM
		db 22,FARFETCHD
		db 30, GLOOM
	ELIF DEF(_ENCBLUEGREEN)
		db 24,BELLSPROUT
		db 25,PIDGEY
		db 24,VENONAT
		db 22,BELLSPROUT
		db 26,VENONAT
		db 26,BELLSPROUT
		db 27,PIDGEY
		db 28,WEEPINBELL
		db 22,FARFETCHD
		db 30,WEEPINBELL
	ENDC
	db $00
