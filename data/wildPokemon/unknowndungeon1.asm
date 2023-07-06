DungeonMons1:;joenote - swapped sandslash/arbok
	db $0A
	db 48,DODRIO     ; CWriggle
	db 50,SEEL     ; Wriggle
	db 53,DEWGONG     ; EWriggle
IF DEF (_ENCBLUEJP)
	db 49,RAPIDASH
ELSE
	db 55,BUTTERFREE     ; ERumia
ENDC
	db 55,RAPIDASH     ; ERan
	db 55,ARTICUNO     ; ESanae
IF DEF(_ENCRED)
	db 55,GOLBAT     ; ERemilia
ELSE
	db 52,ARBOK
ENDC
	db 55,DRATINI     ; EKanako
	db 56,DODUO     ; ESuika
	db 56,DODUO     ; ESuika
	db $00
