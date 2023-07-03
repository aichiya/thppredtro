Route10Mons:;joenote - added magnemite
	db $0F
	IF DEF(_ENCRED)
		db 16,OMASTAR     ; CMomiji
		db 16,KANGASKHAN     ; CAya
		db 14,WEEDLE     ; Fairy
		db 11,PIDGEY     ; CCirno
		db 13,WEEDLE     ; Fairy
		db 15,PIDGEY     ; CCirno
		db 17,KAKUNA     ; Daiyousei
		db 17,MANKEY     ; LilyWhite
		db 17,GROWLITHE     ; LilyBlack
		db 17,PARASECT     ; CLetty
	ELIF DEF(_ENCBLUEJP)
		db 16,VOLTORB
		db 16,SPEAROW
		db 14,VOLTORB
		db 11, SANDSHREW
		db 13, SPEAROW
		db 15, SANDSHREW
		db 17, MAGNEMITE
		db 17, SPEAROW
		db 13, SANDSHREW
		db 17, SANDSHREW
	ELIF DEF(_ENCBLUEGREEN)
		db 16,VOLTORB
		db 16,SPEAROW
		db 14,VOLTORB
		db 11,SANDSHREW
		db 13,SPEAROW
		db 15,SANDSHREW
		db 17,MAGNEMITE
		db 17,SPEAROW
		db 13,SANDSHREW
		db 17,SANDSHREW
	ENDC
	db $00
