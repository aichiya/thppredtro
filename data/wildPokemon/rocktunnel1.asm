TunnelMonsB1:;joenote - added cubone
	db $0F
	db 16,NIDOQUEEN     ; CKoakuma
	db 17,CATERPIE     ; CRumia
	db 17,NIDOQUEEN     ; CKoakuma
	db 15,CATERPIE     ; CRumia
	db 16,NIDOQUEEN     ; CKoakuma
IF DEF(_ENCBLUEJP)	
	db 18, DITTO
ELSE
	db 18, NIDORAN_M     ; Koakuma
ENDC
	db 15,NIDOQUEEN     ; CKoakuma
	db 17,CATERPIE     ; CRumia
	db 13,STARMIE     ; CKomachi
	db 15,STARMIE     ; CKomachi
	db $00
