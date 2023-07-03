Route9Mons:
	db $0F
	IF DEF(_ENCRED)
		db 16,OMASTAR     ; CMomiji
		db 16,KANGASKHAN     ; CAya
		db 14,OMASTAR     ; CMomiji
		db 11,KANGASKHAN     ; CAya
		db 13,OMASTAR     ; CMomiji
		db 15,KANGASKHAN     ; CAya
		db 17,KAKUNA     ; Daiyousei
		db 17,MANKEY     ; LilyWhite
		db 17,GROWLITHE     ; LilyBlack
		db 9,PIDGEY     ; CCirno
	ELIF DEF(_ENCBLUEJP)
		db 16,RATTATA
		db 16,SPEAROW
		db 14,RATTATA
		db 11, SANDSHREW
		db 13, SPEAROW
		db 15, SANDSHREW
		db 17, RATTATA
		db 17, SPEAROW
		db 13, SANDSHREW
		db 17, SANDSHREW
	ELIF DEF(_ENCBLUEGREEN)
		db 16,RATTATA
		db 16,SPEAROW
		db 14,RATTATA
		db 11,SANDSHREW
		db 13,SPEAROW
		db 15,SANDSHREW
		db 17,RATTATA
		db 17,SPEAROW
		db 13,SANDSHREW
		db 17,SANDSHREW
	ENDC
	db $00
