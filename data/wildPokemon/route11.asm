Route11Mons:
	db $0F
	IF DEF(_ENCRED)
		db 14,PINSIR     ; CShizuha
		db 15,GYARADOS     ; CMinoriko
		db 12,OMASTAR     ; CMomiji
		db 9,KANGASKHAN     ; CAya
		db 13,OMASTAR     ; CMomiji
		db 13,KANGASKHAN     ; CAya
		db 15,OMASTAR     ; CMomiji
		db 18,HORSEA     ; Aya
		db 11,KANGASKHAN     ; CAya
		db 15,KANGASKHAN     ; CAya
	ELIF DEF(_ENCBLUEJP)
		db 14, SANDSHREW
		db 15, SPEAROW
		db 12, SANDSHREW
		db  9, DROWZEE
		db 13, SPEAROW
		db 13, DROWZEE
		db 15, SANDSHREW
		db 17, SPEAROW
		db 11, DROWZEE
		db 15, DROWZEE
	ELIF DEF(_ENCBLUEGREEN)
		db 14,SANDSHREW
		db 15,SPEAROW
		db 12,SANDSHREW
		db 9,DROWZEE
		db 13,SPEAROW
		db 13,DROWZEE
		db 15,SANDSHREW
		db 17,SPEAROW
		db 11,DROWZEE
		db 15,DROWZEE
	ENDC
	db $00
