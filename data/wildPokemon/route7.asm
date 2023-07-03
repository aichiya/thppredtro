Route7Mons:;joenote - added ponyta
	db $0F
	IF DEF(_ENCRED)
		db 19,DIGLETT     ; CChen
		db 19,GRIMER     ; CMystia
		db 17,OMASTAR     ; CMomiji
		db 22,MUK     ; Mystia
		db 22,DUGTRIO     ; Chen
		db 18,SANDSLASH     ; CMeiling
		db 18,SANDSLASH     ; CMeiling
		db 20,KABUTO     ; Momiji
		db 19,OMASTAR     ; CMomiji
		db 20,OMASTAR     ; CMomiji
	ELIF DEF(_ENCBLUEJP)
		db 19,PIDGEY
		db 19, ODDISH
		db 17, MEOWTH
		db 22, ODDISH
		db 22,PIDGEY
		db 18, PONYTA
		db 18, GROWLITHE
		db 20, GROWLITHE
		db 19, MEOWTH
		db 20, MEOWTH
	ELIF DEF(_ENCBLUEGREEN)
		db 19,PIDGEY
		db 19,BELLSPROUT
		db 17,MEOWTH
		db 22,BELLSPROUT
		db 22,PIDGEY
		db 18,PONYTA
		db 18,VULPIX
		db 20,VULPIX
		db 19,MEOWTH
		db 20,MEOWTH
	ENDC
	db $00
