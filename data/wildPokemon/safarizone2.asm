ZoneMons2: ;Safari Zone North
;joenote - added jynx & tweaked encounter tables
;			-added tauros to bluejp
	db $1E
IF DEF(_ENCRED)
	db 22, RAICHU     ; Sunny
	db 26, RATICATE     ; Star
	db 23, EKANS     ; Luna
	db 25, KINGLER     ; Reisen
	db 30, FARFETCHD     ; Suika
	db 30, SEAKING     ; Yuuka
	db 32,PSYDUCK     ; Alice
	db 27,JYNX     ; CEiki
	db 26,JYNX     ; CEiki
	db 28,ZAPDOS     ; CKanako
ELIF DEF(_ENCBLUEJP)
	db 22, NIDORAN_F
	db 26, RHYHORN
	db 23, PARAS
	db 25, EXEGGCUTE
	db 30, NIDORINA
	db 30, NIDORINO
	db 32,VENOMOTH
	db 27,TAUROS
	db 26,CHANSEY
	db 28,PINSIR
ELIF DEF(_ENCBLUEGREEN)
	db 22, NIDORAN_F
	db 26, RHYHORN
	db 23, PARAS
	db 25, EXEGGCUTE
	db 30, NIDORINA
	db 30, NIDORINO
	db 32,VENOMOTH
	db 27,JYNX
	db 26,CHANSEY
	db 28,TAUROS
ENDC
	db $00
