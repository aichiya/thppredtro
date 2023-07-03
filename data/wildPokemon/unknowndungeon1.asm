DungeonMons1:;joenote - swapped sandslash/arbok
	db $0A
	db 46,DODRIO     ; CWriggle
	db 46,SEEL     ; Wriggle
	db 46,DEWGONG     ; EWriggle
IF DEF (_ENCBLUEJP)
	db 49,RAPIDASH
ELSE
	db 49,BUTTERFREE     ; ERumia
ENDC
	db 49,RAPIDASH     ; ERan
	db 49,ARTICUNO     ; ESanae
IF DEF(_ENCRED)
	db 52,GOLBAT     ; ERemilia
ELSE
	db 52,ARBOK
ENDC
	db 52,DRATINI     ; EKanako
	db 53,DODUO     ; ESuika
	db 53,DODUO     ; ESuika
	db $00
