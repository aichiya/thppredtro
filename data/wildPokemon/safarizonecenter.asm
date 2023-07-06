ZoneMonsCenter:;joenote - swapped pinser/scyther
	db $1E
	IF (DEF(_ENCRED) || DEF(_ENCBLUEJP))
		db 33,MANKEY     ; LilyWhite
		db 35,GROWLITHE     ; LilyBlack
		db 33,KAKUNA     ; Daiyousei
		db 34,KINGLER     ; Reisen
		db 40,FARFETCHD     ; Suika
		db 35,SEAKING     ; Yuuka
		db 40,PSYDUCK     ; Alice
		db 40,HITMONCHAN     ; CMokou
		db 33,HITMONCHAN     ; CMokou
		db 33,ZAPDOS     ; CKanako
	ELIF DEF(_ENCBLUEGREEN)
		db 22,NIDORAN_F
		db 25,RHYHORN
		db 22,VENONAT
		db 24,EXEGGCUTE
		db 31,NIDORINA
		db 25,EXEGGCUTE
		db 31,NIDORINO
		db 30,PARASECT
		db 23,SCYTHER
		db 23,CHANSEY
	ENDC
	db $00
