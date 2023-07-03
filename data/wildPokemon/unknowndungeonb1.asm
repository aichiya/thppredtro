DungeonMonsB1:;joenote - added mew
	db $19
	db 55,VOLTORB     ; EReisen
	db 55,TENTACOOL     ; EYoumu
	db 55,GOLDUCK     ; EAlice
IF DEF(_ENCRED)
	db 64,JIGGLYPUFF     ; ESakuya
ELIF DEF(_ENCBLUEGREEN)
	db 64,SANDSLASH
ENDC
	db 64,CHARIZARD     ; EReimu
	db 64,BLASTOISE     ; EMarisa
IF DEF(_ENCBLUEJP)
	db 64, CLEFAIRY
ELSE
	db 64,HYPNO     ; ETewi
ENDC
	db 65,STARYU     ; EYuuka
	db 67,MAGNEMITE     ; EYukari
	db 70,MEW     ; VIVIT
	db $00
