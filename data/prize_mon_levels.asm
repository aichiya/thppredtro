;joenote - rebalanced prizes
PrizeMonLevelDictionary:
IF DEF(_ENCRED)
	db CHARMANDER,30 ; CReimu
	db SQUIRTLE,30 ; CMarisa
	db VULPIX,30 ; CSakuya

	db MAGNETON,30 ; CSuika
	db SLOWPOKE,30 ; CYukari
	db DODRIO,30 ; CWriggle
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
