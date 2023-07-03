Route25Mons:;joenote - added charmander
	db $0F
	IF DEF(_ENCRED)
		db 7,GYARADOS     ; CMinoriko
		db 8,PINSIR     ; CShizuha
		db 12,PINSIR     ; CShizuha
		db 13,GYARADOS     ; CMinoriko
		db 10,NIDOKING     ; CPatchouli
		db 14,GRIMER     ; CMystia
		db 13,RHYDON     ; CMedicine
		db 8,NIDOKING     ; CPatchouli
		db 12,GRIMER     ; CMystia
		db 12,NIDOKING     ; CPatchouli
	ELIF DEF(_ENCBLUEJP)
		db  8, CATERPIE
		db  9, METAPOD
		db 13, PIDGEY
		db 13, ODDISH
		db 12, ABRA
		db 14, ODDISH
		db 10, ABRA
		db  7, KAKUNA
		db 10,CHARMANDER
		db  8, WEEDLE
	ELIF DEF(_ENCBLUEGREEN)
		db 8,CATERPIE
		db 9,METAPOD
		db 13,PIDGEY
		db 13,BELLSPROUT
		db 12,ABRA
		db 14,BELLSPROUT
		db 10,ABRA
		db 7,KAKUNA
		db 10,CHARMANDER
		db 8,WEEDLE
	ENDC
	db $00
