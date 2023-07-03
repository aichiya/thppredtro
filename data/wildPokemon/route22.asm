Route22Mons:
	db $19
	IF DEF(_ENCRED)
		db 3,DIGLETT     ; CChen
		db 3,GRIMER     ; CMystia
		db 4,DIGLETT     ; CChen
		db 4,GRIMER     ; CMystia
		db 2,DIGLETT     ; CChen
		db 2,GRIMER     ; CMystia
		db 3,DIGLETT     ; CChen
		db 4,OMASTAR     ; CMomiji
		db 4,RHYDON     ; CMedicine
		db 5,AERODACTYL     ; CSanae
	ELIF DEF(_ENCBLUEJP)
		db 3,RATTATA
		db  3, NIDORAN_M
		db  4, RATTATA
		db  4, NIDORAN_M
		db  2, RATTATA
		db  2, NIDORAN_M
		db  3, SPEAROW
		db  5, SPEAROW
		db  3, NIDORAN_F
		db  4, NIDORAN_F
	ELIF DEF(_ENCBLUEGREEN)
		db 3,RATTATA
		db 3,NIDORAN_F
		db 4,RATTATA
		db 4,NIDORAN_F
		db 2,RATTATA
		db 2,NIDORAN_F
		db 3,SPEAROW
		db 5,SPEAROW
		db 3,NIDORAN_M
		db 4,NIDORAN_M
	ENDC
	db $00
