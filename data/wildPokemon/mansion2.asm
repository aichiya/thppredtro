MansionMons2:
	db $0A
	IF DEF(_ENCRED)
		db 32,NIDOQUEEN     ; CKoakuma
		db 34,NIDOQUEEN     ; CKoakuma
		db 34,SANDSLASH     ; CMeiling
		db 30,NIDOKING     ; CPatchouli
		db 30,NIDORAN_F     ; Meiling
		db 32,NIDORAN_M     ; Koakuma
		db 30,CLEFAIRY     ; Patchouli
		db 28,WIGGLYTUFF     ; CRemilia
		db 39,NIDORINO     ; EKoakuma
		db 37,ZUBAT     ; Remilia
	ELIF DEF(_ENCBLUEJP)
		db 32, GROWLITHE
		db 34, GRIMER
		db 34, GRIMER
		db 30, PONYTA
		db 30, GRIMER
		db 32, PONYTA
		db 30, KOFFING
		db 28, PONYTA
		db 39, MUK
		db 37, WEEZING
	ELIF DEF(_ENCBLUEGREEN)
		db 32,VULPIX
		db 34,GRIMER
		db 34,GRIMER
		db 30,PONYTA
		db 30,GRIMER
		db 32,PONYTA
		db 30,KOFFING
		db 28,PONYTA
		db 39,MUK
		db 37,WEEZING
	ENDC
	db $00
