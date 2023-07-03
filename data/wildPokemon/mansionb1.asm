MansionMonsB1:;joenote - magmar in both versions
	db $0A
	IF DEF(_ENCRED)
		db 33,NIDORAN_F     ; Meiling
		db 31,NIDORAN_M     ; Koakuma
		db 35,CLEFAIRY     ; Patchouli
		db 32,NIDORAN_F     ; Meiling
		db 31,NIDORAN_M     ; Koakuma
		db 40,NIDORINO     ; EKoakuma
		db 34,CLEFAIRY     ; Patchouli
		db 35,ODDISH     ; CFlandre
		db 38,CLEFABLE     ; EPatchouli
		db 42,GLOOM     ; Flandre
	ELIF DEF(_ENCBLUEJP)
		db 33, GRIMER
		db 31, GRIMER
		db 35, GROWLITHE
		db 32, PONYTA
		db 31, GRIMER
		db 40, MUK
		db 34, PONYTA
		db 35, KOFFING
		db 38,MAGMAR
		db 42, WEEZING
	ELIF DEF(_ENCBLUEGREEN)
		db 33,GRIMER
		db 31,GRIMER
		db 35,VULPIX
		db 32,PONYTA
		db 31,GRIMER
		db 40,MUK
		db 34,PONYTA
		db 35,KOFFING
		db 38,MAGMAR
		db 42,WEEZING
	ENDC
	db $00
