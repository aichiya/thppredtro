DungeonMons2:
	db $0F
	db 51,DODRIO     ; CWriggle
	db 51,SEEL     ; Wriggle
	db 51,DEWGONG     ; EWriggle
	db 52,BUTTERFREE     ; ERumia
IF DEF(_ENCBLUEJP)
	db 52, RATICATE
ELSE
	db 52,RAPIDASH     ; ERan
ENDC
	db 52,ARTICUNO     ; ESanae
	db 54,VILEPLUME     ; EFlandre
	db 55,MEWTWO     ; ESuwako
	db 60,MAGMAR     ; EEiki
	db 56,MAGMAR     ; EEiki
	db $00
