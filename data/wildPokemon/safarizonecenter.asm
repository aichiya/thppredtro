ZoneMonsCenter:;joenote - swapped pinser/scyther
	db $1E
	IF (DEF(_ENCRED) || DEF(_ENCBLUEJP))
		db 22,MANKEY     ; LilyWhite
		db 25,GROWLITHE     ; LilyBlack
		db 22,KAKUNA     ; Daiyousei
		db 24,KINGLER     ; Reisen
		db 31,FARFETCHD     ; Suika
		db 25,SEAKING     ; Yuuka
		db 31,PSYDUCK     ; Alice
		db 30,HITMONCHAN     ; CMokou
		db 23,HITMONCHAN     ; CMokou
		db 23,ZAPDOS     ; CKanako
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
