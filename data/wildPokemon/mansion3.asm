MansionMons3:
	db $0A
	IF DEF(_ENCRED)
		db 31,NIDOKING     ; CPatchouli
		db 33,NIDOKING     ; CPatchouli
		db 35,NIDOQUEEN     ; CKoakuma
		db 32,SANDSLASH     ; CMeiling
		db 34,NIDORAN_F     ; Meiling
		db 40,CLEFAIRY     ; Patchouli
		db 34,NIDORAN_M     ; Koakuma
		db 38,CLEFABLE     ; EPatchouli
		db 36,WIGGLYTUFF     ; CRemilia
		db 42,ZUBAT     ; Remilia
	ELIF DEF(_ENCBLUEJP)
		db 31, GRIMER
		db 33, GROWLITHE
		db 35, GRIMER
		db 32, PONYTA
		db 34, PONYTA
		db 40, MUK
		db 34, GRIMER
		db 38, MUK
		db 36, PONYTA
		db 42, WEEZING
	ELIF DEF(_ENCBLUEGREEN)
		db 31,GRIMER
		db 33,VULPIX
		db 35,GRIMER
		db 32,PONYTA
		db 34,MAGMAR
		db 40,MUK
		db 34,KOFFING
		db 38,MUK
		db 36,PONYTA
		db 42,WEEZING
	ENDC
	db $00
