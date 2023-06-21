;joenote - rebalanced prizes
PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries
	dw PrizeMenuMon1Cost

	dw PrizeMenuMon2Entries
	dw PrizeMenuMon2Cost

	dw PrizeMenuTMsEntries
	dw PrizeMenuTMsCost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
IF DEF(_ENCRED)
	db CHARMANDER ; CReimu
	db SQUIRTLE ; CMarisa
	db VULPIX ; CSakuya
ELIF DEF(_ENCBLUEJP)
	db ABRA
	db PIKACHU
	db HORSEA
ELIF DEF(_ENCBLUEGREEN)
	db ABRA
	db CLEFAIRY
	db NIDORINO
ENDC
	db "@"

PrizeMenuMon1Cost:
IF DEF(_ENCRED)
	coins 2000
	coins 2000
	coins 2000
ELIF DEF(_ENCBLUEJP)
	coins 150
	coins 620
	coins 1000
ELIF DEF(_ENCBLUEGREEN)
	coins 120
	coins 750
	coins 1200
ENDC
	db "@"

PrizeMenuMon2Entries:
IF DEF(_ENCRED)
	db MAGNETON ; CSuika
	db SLOWPOKE ; CYukari
	db PARAS ; Satsuki
ELIF DEF(_ENCBLUEJP)
	db CLEFABLE
	db DRAGONAIR
	db PORYGON
ELIF DEF(_ENCBLUEGREEN)
	db PINSIR
	db DRATINI
	db PORYGON
ENDC
	db "@"

PrizeMenuMon2Cost:
IF DEF(_ENCRED)
	coins 1313
	coins 3636
	coins 6969
ELIF DEF(_ENCBLUEJP)
	coins 2500
	coins 4600
	coins 6500
ELIF DEF(_ENCBLUEGREEN)
	coins 2800
	coins 4600
	coins 6500
ENDC
	db "@"

PrizeMenuTMsEntries:
	db TM_24
	db TM_14
	db TM_15
	db "@"

PrizeMenuTMsCost:
	coins 3300
	coins 5500
	coins 7700
	db "@"
