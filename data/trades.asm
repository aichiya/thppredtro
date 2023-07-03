TradeMons:
; givemonster, getmonster, textstring, nickname (11 bytes), 14 bytes total
IF DEF(_ENCBLUEJP)
	db RHYDON,		KANGASKHAN,	0, "RODAN@@@@@@"
	db JIGGLYPUFF,	MR_MIME,   	0, "MASARU@@@@@"
	db BUTTERFREE,	BEEDRILL,  	2, "CHIKUCHIKU@";japanese onomatopoeia for a needle-like type of prickling pain
	db GROWLITHE,	KRABBY,     0, "DORAKU@@@@@";reference to the Kani Dōraku japanese restaraunt chain
	db PIDGEY,		FARFETCHD, 	2, "AKKA@@@@@@@"
	db PERSIAN,		TAUROS, 	0, "GYUTA@@@@@@"
	db MACHOKE,		HAUNTER,	1, "GHOSUKE@@@@"
	db KADABRA,		GRAVELER,	1, "SABURO@@@@@"
	db SEEL,		SLOWPOKE,	2, "OSCAR@@@@@@"
	db RATTATA,		POLIWAG,	2, "POLI-TAN@@@"
;unused localization names for blue-jp trades per 
;https://tcrf.net/Development:Pok%C3%A9mon_Red_and_Blue/Localization#Pok%C3%A9mon_Nicknames
;	FLUFFY
;	MYMO
;	<beedrill has no localized name>
;	VALERIE
;	SWANNY
;	JIMBO
;	MICHELLE
;	JENNY
;	SHANE
;	WAGSTER
ELSE
	db TAUROS,    DITTO,       0,"Sweetato@@@" ; $0 Route 11      | Shizuha <-> EMinoriko
	db PERSIAN,   WIGGLYTUFF,  0,"Vlad-VI@@@@" ; $1 Route 2 House | CAlice <-> CRemilia
	db NIDOKING,  JYNX,        2,"Enma@@@@@@@" ; $2 UNUSED        | CPatchuoli <-> CEiki
	db KAKUNA,    PIDGEOT,     0,"Bakatare@@@" ; $3 Lab 1         | Daiyousei <-> ECirno
	db LAPRAS,    MAGIKARP,    2,"Maple@@@@@@" ; $4 Vermilion City| Minoriko <-> EShizuha
	db SNORLAX,   GEODUDE,     0,"Sakura@@@@@" ; $5 Route 18      | Sanae <-> Yuyuko
	db CUBONE,    HITMONCHAN,  1,"Fujiwara@@@" ; $6 Cerulean City | CKaguya <-> CMokou
	db KAKUNA,    ARCANINE,    1,"Black Lily@" ; $7 Lab 2         | Daiyousei <-> ELilyBlack
	db KAKUNA,    PRIMEAPE,    2,"White Lily@" ; $8 Lab 3         | Daiyousei <-> ELilyWhite
	db HAUNTER,   GENGAR,      2,"Garurumon@@" ; $9 UG Path       | EKeine <-> HKeine
ENDC

