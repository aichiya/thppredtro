Route5Mons:;joenote - added meowth/mankey
	db $0F
	IF DEF(_ENCRED)
		db 13,DIGLETT     ; CChen
		db 13,PINSIR     ; CShizuha
		db 15,GYARADOS     ; CMinoriko
		db 10,GYARADOS     ; CMinoriko
		db 12,PINSIR     ; CShizuha
		db 15,OMASTAR     ; CMomiji
		db 16,OMASTAR     ; CMomiji
		db 16,KANGASKHAN     ; CAya
		db 14,KANGASKHAN     ; CAya
		db 16,DIGLETT     ; CChen
	ELIF DEF(_ENCBLUEJP)
		db 13, ODDISH
		db 13, PIDGEY
		db 15, PIDGEY
		db 10, MANKEY
		db 12, MEOWTH
		db 15, ODDISH
		db 16, ODDISH
		db 16, PIDGEY
		db 14, MEOWTH
		db 16, MEOWTH
	ELIF DEF(_ENCBLUEGREEN)
		db 13,BELLSPROUT
		db 13,PIDGEY
		db 15,PIDGEY
		db 10,MANKEY
		db 12,MEOWTH
		db 15,BELLSPROUT
		db 16,BELLSPROUT
		db 16,PIDGEY
		db 14,MEOWTH
		db 16,MEOWTH
	ENDC
	db $00
