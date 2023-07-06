MansionMons1:
	db $0A
	IF DEF(_ENCRED)
		db 36,SANDSLASH     ; CMeiling
		db 35,SANDSLASH     ; CMeiling
		db 39,NIDOKING     ; CPatchouli
		db 37,NIDOQUEEN     ; CKoakuma
		db 39,NIDORAN_F     ; Meiling
		db 38,NIDORAN_M     ; Koakuma
		db 37,CLEFAIRY     ; Patchouli
		db 36,WIGGLYTUFF     ; CRemilia
		db 39,NIDORINA     ; EMeiling
		db 39,ZUBAT     ; Remilia
	ELIF DEF(_ENCBLUEJP)
		db 32, GRIMER
		db 30, GRIMER
		db 34, PONYTA
		db 30, PONYTA
		db 34, GROWLITHE
		db 32, PONYTA
		db 30, KOFFING
		db 28, PONYTA
		db 37, MUK
		db 39, WEEZING
	ELIF DEF(_ENCBLUEGREEN)
		db 32,GRIMER
		db 30,GRIMER
		db 34,PONYTA
		db 30,PONYTA
		db 34,VULPIX
		db 32,PONYTA
		db 30,KOFFING
		db 28,PONYTA
		db 37,MUK
		db 39,WEEZING
	ENDC
	db $00
