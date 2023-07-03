Route4Mons:;joenote - added bubasaur
	db $14
	IF DEF(_ENCRED)
		db 10,DIGLETT     ; CChen
		db 10,OMASTAR     ; CMomiji
		db 8,PINSIR     ; CShizuha
		db 8,GYARADOS     ; CMinoriko
		db 10,DIGLETT     ; CChen
		db 12,PINSIR     ; CShizuha
		db 12,GYARADOS     ; CMinoriko
		db 8,ELECTRODE     ; CEirin
		db 10,OMASTAR     ; CMomiji
		db 12,ELECTRODE     ; CEirin
	ELIF DEF(_ENCBLUEJP)
		db 10,RATTATA
		db 10,SPEAROW
		db 8,RATTATA
		db  8, SPEAROW
		db 10, SANDSHREW
		db 12, RATTATA
		db 12, SPEAROW
		db  8, SANDSHREW
		db 10,BULBASAUR
		db 12, SANDSHREW
	ELIF DEF(_ENCBLUEGREEN)
		db 10,RATTATA
		db 10,SPEAROW
		db 8,RATTATA
		db 8,SPEAROW
		db 10,SANDSHREW
		db 12,RATTATA
		db 12,SPEAROW
		db 8,SANDSHREW
		db 10,BULBASAUR
		db 12,SANDSHREW
	ENDC
	db $00
