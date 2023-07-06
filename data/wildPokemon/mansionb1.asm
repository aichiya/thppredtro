MansionMonsB1:;joenote - magmar in both versions
	db $0A
	IF DEF(_ENCRED)
		db 39,NIDORAN_F     ; Meiling
		db 36,NIDORAN_M     ; Koakuma
		db 39,CLEFAIRY     ; Patchouli
		db 40,NIDORAN_F     ; Meiling
		db 39,NIDORAN_M     ; Koakuma
		db 41,NIDORINO     ; EKoakuma
		db 38,CLEFAIRY     ; Patchouli
		db 35,ODDISH     ; CFlandre
		db 42,CLEFABLE     ; EPatchouli
		db 40,GLOOM     ; Flandre
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
