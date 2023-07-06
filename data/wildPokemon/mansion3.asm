MansionMons3:
	db $0A
	IF DEF(_ENCRED)
		db 37,NIDOKING     ; CPatchouli
		db 36,NIDOKING     ; CPatchouli
		db 41,NIDOQUEEN     ; CKoakuma
		db 38,SANDSLASH     ; CMeiling
		db 39,NIDORAN_F     ; Meiling
		db 39,CLEFAIRY     ; Patchouli
		db 38,NIDORAN_M     ; Koakuma
		db 40,CLEFABLE     ; EPatchouli
		db 39,WIGGLYTUFF     ; CRemilia
		db 40,ZUBAT     ; Remilia
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
