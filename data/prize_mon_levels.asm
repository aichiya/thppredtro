;joenote - rebalanced prizes
PrizeMonLevelDictionary:
IF DEF(_ENCRED)
	db CHARMANDER,15 ; CReimu
	db SQUIRTLE,15 ; CMarisa
	db VULPIX,15 ; CSakuya

	db MAGNETON,15 ; CSuika
	db SLOWPOKE,15 ; CYukari
	db PARAS,15 ; Satsuki
ELIF DEF(_ENCBLUEJP)
	db ABRA,      8
	db PIKACHU, 12
	db HORSEA, 18

	db CLEFABLE,   24
	db DRAGONAIR,  30
	db PORYGON,  22
ELIF DEF(_ENCBLUEGREEN)
	db ABRA,6
	db CLEFAIRY,12
	db NIDORINO,17

	db PINSIR,25
	db DRATINI,18
	db PORYGON,18
ENDC
