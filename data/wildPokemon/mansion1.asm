MansionMons1:
	db $0A
	IF DEF(_ENCRED)
		db 32,SANDSLASH     ; CMeiling
		db 30,SANDSLASH     ; CMeiling
		db 34,NIDOKING     ; CPatchouli
		db 30,NIDOQUEEN     ; CKoakuma
		db 34,NIDORAN_F     ; Meiling
		db 32,NIDORAN_M     ; Koakuma
		db 30,CLEFAIRY     ; Patchouli
		db 28,WIGGLYTUFF     ; CRemilia
		db 37,NIDORINA     ; EMeiling
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
