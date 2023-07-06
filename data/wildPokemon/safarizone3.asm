ZoneMons3:	;Safari Zone West
;joenote - added mr mime & tweaked encounter tables
	db $1E
	IF DEF(_ENCRED)
		db 35,EKANS     ; Luna
		db 36,RAICHU     ; Sunny
		db 33,RATICATE     ; Star
		db 34,GASTLY     ; Keine
		db 40,FARFETCHD     ; Suika
		db 35,SEAKING     ; Yuuka
		db 40,PSYDUCK     ; Alice
		db 36,JYNX     ; CEiki
		db 36,JYNX     ; CEiki
		db 38,ZAPDOS     ; CKanako
	ELIF DEF(_ENCBLUEJP)
		db 25, NIDORAN_M
		db 26, DODUO
		db 23, VENONAT
		db 24, EXEGGCUTE
		db 33, NIDORINO
		db 25, NIDORAN_F
		db 31,VENOMOTH
		db 26,MR_MIME
		db 26, PINSIR
		db 28, LICKITUNG
	ELIF DEF(_ENCBLUEGREEN)
		db 25,NIDORAN_F
		db 26,DODUO
		db 23,VENONAT
		db 24,EXEGGCUTE
		db 33,NIDORINA
		db 25,NIDORAN_M
		db 26,MR_MIME
		db 31,VENOMOTH
		db 26,TAUROS
		db 28,KANGASKHAN
	ENDC
	db $00
