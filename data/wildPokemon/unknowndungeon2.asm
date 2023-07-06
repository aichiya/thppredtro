DungeonMons2:
	db $0F
	db 50,DODRIO     ; CWriggle
	db 55,SEEL     ; Wriggle
	db 60,DEWGONG     ; EWriggle
	db 61,BUTTERFREE     ; ERumia
IF DEF(_ENCBLUEJP)
	db 52, RATICATE
ELSE
	db 61,RAPIDASH     ; ERan
ENDC
	db 61,ARTICUNO     ; ESanae
	db 63,VILEPLUME     ; EFlandre
	db 63,MEWTWO     ; ESuwako
	db 65,MAGMAR     ; EEiki
	db 60,MAGMAR     ; EEiki
	db $00
