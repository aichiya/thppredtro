Route8Mons:;joenote - added growlithe/vulpix
	db $0F
	IF DEF(_ENCRED)
		db 18,DIGLETT     ; CChen
		db 18,GRIMER     ; CMystia
		db 17,DIGLETT     ; CChen
		db 16,GRIMER     ; CMystia
		db 20,MUK     ; Mystia
		db 20,DUGTRIO     ; Chen
		db 19,SANDSLASH     ; CMeiling
		db 17,OMASTAR     ; CMomiji
		db 15,OMASTAR     ; CMomiji
		db 18,SANDSLASH     ; CMeiling
	ELIF DEF(_ENCBLUEJP)
		db 18,PIDGEY
		db 18, MEOWTH
		db 17, SANDSHREW
		db 16, GROWLITHE
		db 20, PIDGEY
		db 20, MEOWTH
		db 19, SANDSHREW
		db 17, GROWLITHE
		db 15, VULPIX
		db 18, GROWLITHE
	ELIF DEF(_ENCBLUEGREEN)
		db 18,PIDGEY
		db 18,MEOWTH
		db 17,SANDSHREW
		db 16,VULPIX
		db 20,PIDGEY
		db 20,MEOWTH
		db 19,SANDSHREW
		db 17,VULPIX
		db 15,GROWLITHE
		db 18,VULPIX
	ENDC
	db $00
