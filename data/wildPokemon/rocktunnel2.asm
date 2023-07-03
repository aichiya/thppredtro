TunnelMonsB2:;joenote - added cubone
	db $0F
	db 16,CATERPIE     ; CRumia
	db 17,NIDOQUEEN     ; CKoakuma
	db 17,CATERPIE     ; CRumia
	db 15,NIDOQUEEN     ; CKoakuma
	db 16,CATERPIE     ; CRumia
IF DEF(_ENCBLUEJP)	
	db 18, DITTO
ELSE
	db 18, NIDORAN_M     ; Koakuma
ENDC
	db 17,CATERPIE     ; CRumia
	db 17,NIDOQUEEN     ; CKoakuma
	db 13,PARASECT     ; CLetty
	db 18,PARASECT     ; CLetty
	db $00
