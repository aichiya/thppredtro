ZoneMons1:	;Safari Zone East
;joenote - added lickitung & tweaked encounter tables
;			-added kangaskhan to bluejp
	db $1E
	IF DEF(_ENCRED)
		db 34,RATICATE     ; Star
		db 36,EKANS     ; Luna
		db 32,RAICHU     ; Sunny
		db 35,GASTLY     ; Keine
		db 33,FARFETCHD     ; Suika
		db 34,SEAKING     ; Yuuka
		db 38,PSYDUCK     ; Alice
		db 32,HITMONCHAN     ; CMokou
		db 35,HITMONCHAN     ; CMokou
		db 35,ZAPDOS     ; CKanako
	ELIF DEF(_ENCBLUEJP)
		db 24, NIDORAN_M
		db 26, DODUO
		db 22, PARAS
		db 25, EXEGGCUTE
		db 33, NIDORINO
		db 24, NIDORAN_F
		db 25, PARASECT
		db 22,KANGASKHAN
		db 25, LICKITUNG
		db 28, SCYTHER
	ELIF DEF(_ENCBLUEGREEN)
		db 24,NIDORAN_F
		db 26,DODUO
		db 22,PARAS
		db 25,EXEGGCUTE
		db 33,NIDORINA
		db 24,NIDORAN_M
		db 28,PINSIR
		db 22,LICKITUNG
		db 25,KANGASKHAN
		db 25,PARASECT
	ENDC
	db $00
