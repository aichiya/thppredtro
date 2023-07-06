DungeonMonsB1:;joenote - added mew
	db $19
	db 63,VOLTORB     ; EReisen
	db 63,TENTACOOL     ; EYoumu
	db 63,GOLDUCK     ; EAlice
IF DEF(_ENCRED)
	db 65,JIGGLYPUFF     ; ESakuya
ELIF DEF(_ENCBLUEGREEN)
	db 64,SANDSLASH
ENDC
	db 65,CHARIZARD     ; EReimu
	db 65,BLASTOISE     ; EMarisa
IF DEF(_ENCBLUEJP)
	db 64, CLEFAIRY
ELSE
	db 99,HYPNO     ; ETewi
ENDC
	db 65,STARYU     ; EYuuka
	db 67,MAGNEMITE     ; EYukari
	db 70,MEW     ; VIVIT
	db $00
