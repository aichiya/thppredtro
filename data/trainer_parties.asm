TrainerDataPointers:
	dw YoungsterData
	dw BugCatcherData
	dw LassData
	dw SailorData
	dw JrTrainerMData
	dw JrTrainerFData
	dw PokemaniacData
	dw SuperNerdData
	dw HikerData
	dw BikerData
	dw BurglarData
	dw EngineerData
	dw Juggler1Data
	dw FisherData
	dw SwimmerData
	dw CueBallData
	dw GamblerData
	dw BeautyData
	dw PsychicData
	dw RockerData
	dw JugglerData
	dw TamerData
	dw BirdKeeperData
	dw BlackbeltData
	dw Green1Data
	dw ProfOakData
	dw ChiefData
	dw ScientistData
	dw GiovanniData
	dw RocketData
	dw CooltrainerMData
	dw CooltrainerFData
	dw BrunoData
	dw BrockData
	dw MistyData
	dw LtSurgeData
	dw ErikaData
	dw KogaData
	dw BlaineData
	dw SabrinaData
	dw GentlemanData
	dw Green2Data
	dw Green3Data
	dw LoreleiData
	dw ChannelerData
	dw AgathaData
	dw LanceData

RosterLabelStart::
; if first byte != FF, then
	; first byte is level (of all pokemon on this team)
	; all the next bytes are pokemon species
	; null-terminated
; if first byte == FF, then
	; first byte is FF (obviously)
	; every next two bytes are a level and species
	; null-terminated
YoungsterData:
; Route 3
	db 11,DIGLETT,CLOYSTER,0 ; CChen,CKeine | OK
	db 14,KANGASKHAN,0 ; CAya | OK
; Mt. Moon 1F
	db 10,DIGLETT,CATERPIE,NIDOQUEEN,0 ; CChen,CRumia,CKoakuma | OK
; Route 24
	db 14,DIGLETT,RHYDON,NIDOQUEEN,0 ; CChen,CMedicine,CKoakuma | OK
; Route 25
	db 16,RATICATE,EKANS,0 ; Star,Luna | OK
	db 18,GOLEM,0 ; CRan | OK
	db 16,KANGASKHAN,NIDOQUEEN,0 ; CAya,CKoakuma | OK
; SS Anne 1F Rooms
	db 22,KABUTO,0 ; Momiji | OK
; Route 11
	db 24,PONYTA,0 ; Ran | OK
	db 22,NIDORAN_M,HORSEA,0 ; Koakuma,Aya | OK
	db 20,PIDGEOTTO,PIDGEOTTO,PIDGEOTTO,0 ; Cirno,Cirno,Cirno | OK
	db 22,DUGTRIO,PONYTA,0 ; Chen,Ran | OK
; Unused
	;db 17,SPEAROW,RATTATA,RATTATA,SPEAROW,0
BugCatcherData:
; Viridian Forest
	db 6,WEEDLE,RHYDON,0 ; Fairy,CMedicine | OK
	db 7,RATTATA,FEAROW,PIKACHU,0 ; CSunny,CLuna,CStar | OK
	db 9,RHYDON,0 ; CMedicine | OK
; Route 3
	db 10,RATTATA,PIKACHU,FEAROW,0 ; CStar,CSunny,CLuna | OK
	db 9,WEEDLE,PIKACHU,FEAROW,RATTATA,0 ; Fairy,CSunny,CLuna,CStar | OK
	db 11,WEEDLE,PIDGEY,0 ; Fairy,CCirno | OK
; Mt. Moon 1F
	db 11,FEAROW,PIDGEY,0 ; CLuna,CCirno | OK
	db 10,PIKACHU,PIDGEY,RATTATA,0 ; CSunny,CCirno,CStar | OK
; Route 24
	db 15,PIDGEY,KAKUNA,0 ; CCirno,Daiyousei | OK
; Route 6
	db 16,KAKUNA,MANKEY,GROWLITHE,0 ; Daiyousei,LilyWhite,LilyBlack | OK
	db 20,SANDSHREW,0 ; ESunny | OK
; Route 9
	db 24,KAKUNA,PIDGEOTTO,0 ; Cirno,Daiyousei | OK
	db 22,RAICHU,EKANS,SPEAROW,0 ; Sunny,Luna,EStar | OK
; Unused
;	db 18,METAPOD,CATERPIE,VENONAT,0
LassData:
; Route 3
	db 9,GRIMER,ONIX,0 ; CMystia,CTewi | OK
	db 10,DIGLETT,KRABBY,0 ; CChen,CReisen | OK
	db 14,AERODACTYL,0 ; CSanae | OK
; Route 4
	db 45,VENUSAUR,IVYSAUR,BULBASAUR,0 ; Genji,Kirisame,Hakurei | OK
; Mt. Moon 1F
	db 11,PERSIAN,AERODACTYL,0 ; CAlice,CSanae | OK
	db 14,CUBONE,0 ; CKaguya | OK
; Route 24
	db 16,MANKEY,GROWLITHE,0 ; LilyWhite,LilyBlack | OK
	db 14,PINSIR,GYARADOS,0 ; CShizuha,CMinoriko | OK
; Route 25
	db 15,ONIX,KRABBY,0 ; CTewi,CReisen | OK
	db 13,POLIWAG,ABRA,MACHOP,0 ; CLyrica,CMerlin,CLunasa | OK
; SS Anne 1F Rooms
	db 20,WEEPINBELL,KRABBY,0 ; CYoumu | CReisen | OK
; SS Anne 2F Rooms
	db 20,LAPRAS,TAUROS,0 ; Shizuha,Minoriko | OK
; Route 8
	db 27,DROWZEE,KINGLER,0 ; Tewi,Reisen | OK
	db 28,SNORLAX,MOLTRES,DRAGONITE,0 ; Sanae,Kanako,Suwako | OK
	db 24,MUK,DUGTRIO,HORSEA,PIDGEOTTO,PONYTA,0 ; Mystia,Chen,Aya,Cirno,Ran
	db 26,CLEFAIRY,WARTORTLE,0 ; Patchouli,Marisa | OK
; Celadon Gym
	db 27,GOLDEEN,TAUROS,0 ; CYuuka,Shizuha | OK
	db 27,GOLDEEN,LAPRAS,0 ; CYuuka,Minoriko | OK
	
SailorData:
; SS Anne Stern
	db 20,SANDSLASH,FLAREON,0 ; CMeiling, CNitori | OK
	db 20,SANDSLASH,VAPOREON,0 ; CMeiling, Hina | OK
; SS Anne B1F Rooms
	db 23,PORYGON,0 ; Nitori | OK
	db 20,SANDSLASH,VAPOREON,KABUTO,0 ; CMeiling,Hina,Momiji | OK
	db 22,VAPOREON,PORYGON,0 ; Hina,Nitori | OK
	db 20,SANDSLASH,SANDSLASH,KABUTO,0 ; CMeiling,CMeiling,Momiji | OK
	db 24,MR_MIME,0 ; Komachi | OK
; Vermilion Gym
	db 23,EKANS,PORYGON,0 ; Luna,Nitori | OK
JrTrainerMData:
; Pewter Gym
	db 11,PARASECT,PARASECT,0 ; CLetty,CLetty | OK
; Route 24/Route 25
	db 14,OMASTAR,EEVEE,0 ; CMomiji,CHina | OK
; Route 24
	db 18,MUK,0 ; Mystia | OK
; Route 6
	db 20,NINETALES,0 ; Sakuya | OK
	db 18,CHARMELEON,WARTORTLE,0 ; Reimu,Marisa | OK
; Route 9
	db 24,PORYGON,MR_MIME,0 ; Nitori,Komachi | OK
	db 22,KABUTO,GASTLY,HORSEA,NINETALES,0 ; Momiji,Keine,Aya,Sakuya | OK
; Route 12
	db 33,KABUTO,PSYDUCK,0 ; Momiji,Alice | OK
;joenote - special fight with future trainer red
	db $FF,90,TENTACOOL,90,GOLDUCK,90,ARTICUNO,90,JIGGLYPUFF,90,BLASTOISE,100,CHARIZARD,0 ; EYoumu,EAlice,ESanae,ESakuya,EMarisa,EReimu | OK
; Unused
	;db 18,DIGLETT,DIGLETT,SANDSHREW,0
JrTrainerFData:
; Cerulean Gym
	db 19,STARMIE,0 ; CKomachi | OK
; Route 6
	db 18,OMASTAR,FLAREON,0 ; CMomiji,CNitori | OK
	db 18,STARMIE,RAICHU,PSYDUCK,0 ; CKomachi,Sunny,Alice | OK
; Route 9
	db 22,ELECTRODE,CHARMELEON,LAPRAS,TAUROS,0 ; CEirin,Reimu,Minoriko,Shizuha | OK
	db 26,EXEGGCUTE,0 ; Eirin | OK
; Route 10
	db 24,MUK,DUGTRIO,0 ; Mystia,Chen | OK
	db 26,DUGTRIO,VICTREEBEL,0 ; Chen,Youmu | OK
; Rock Tunnel B1F
	db 24,DROWZEE,VENONAT,PIDGEOTTO,0 ; Tewi,Letty,Cirno | OK
	db 25,FLAREON,SQUIRTLE,0 ; CNitori,CMarisa | OK
; Celadon Gym
	db 28,MAROWAK,SNORLAX,0 ; Kaguya,Sanae | OK
; Route 13
	db 28,PORYGON,DUGTRIO,MUK,MAGIKARP,DITTO,0 ; Nitori,Chen,Mystia,EShizuha,EMinoriko | OK
	db 36,PRIMEAPE,BEEDRILL,0 ; ELilyWhite,EDaiyousei | OK
	db 32,HORSEA,MUK,DUGTRIO,KINGLER,0 ; Aya,Mystia,Chen,Reisen | OK
	db 32,KAKUNA,VENONAT,PIDGEOTTO,0 ; Diayousei,Letty,Cirno | OK
; Route 20
	db 38,NIDORINO,PIDGEOT,0 ; EKoakuma,ECirno | OK
	db 36,MEOWTH,JOLTEON,HYPNO,0 ; EChen,EHina,ETewi | OK
; Rock Tunnel 1F
	db 25,PORYGON,DROWZEE,0 ; Nitori,Tewi | OK
	db 24,LAPRAS,TAUROS,MR_MIME,0 ; Minoriko,Shizuha,Komachi | OK
	db 22,MUK,DUGTRIO,TAUROS,KABUTO,0 ; Mystia,Chen,Shizuha,Momiji | OK
; Route 15
	db 32,MANKEY,SNORLAX,CLEFAIRY,VICTREEBEL,0 ; LilyWhite,Sanae,Patchouli,Youmu | OK
	db 34,DUGTRIO,PONYTA,0 ; Chen,Ran | OK
	db 38,HYPNO,0 ; ETewi | OK
	db 34,DROWZEE,KINGLER,EXEGGCUTE,0 ; Tewi,Reisen,Eirin | OK
;Vermillion Dock 
	;joenote - Special Trainer - Seiga/Green the orange league champ
	db $FF,82,HAUNTER,82,KOFFING,82,VILEPLUME,83,DODUO,84,MEWTWO,85,JIGGLYPUFF,0 ; HKeine,EMokou,EFlandre,ESuika,ESuwako,ESakuya | OK
; Unused
	;db 22,BULBASAUR,0

PokemaniacData:
; Route 10
	db 45,EXEGGUTOR,VOLTORB,0 ; EEirin,EReisen | OK
	db 26,TENTACRUEL,WIGGLYTUFF,0 ; CYuyuko,CRemilia | OK
; Rock Tunnel B1F
	db 22,PORYGON,HORSEA,KABUTO,0 ; Nitori,Aya,Momiji | OK
	db 24,CHARMELEON,SLOWPOKE,0 ; Reimu,CYukari | OK
	db 25,ODDISH,0 ; CFlandre | OK
; Victory Road 2F
	db 57,GENGAR,HITMONLEE,KOFFING,0 ; HKeine,EKaguya,EMokou | OK
; Rock Tunnel 1F
	db 25,NINETALES,ZUBAT,0 ; Sakuya,Remilia | OK
SuperNerdData:
; Mt. Moon 1F
	db 11,NIDOKING,NIDOQUEEN,0 ; CPatchouli,CKoakuma | OK
; Mt. Moon B2F
	db 12,ELECTRODE,CUBONE,HITMONCHAN,0 ; CEirin,CKaguya,CMokou | OK
; Route 8
	db 24,KANGASKHAN,RHYDON,STARMIE,JYNX,0 ; CAya,CMedicine,CKomachi,CEiki | OK
	db 26,PIKACHU,RATICATE,ARBOK,0 ; CSunny,Star,ELuna | OK
	db 30,SEEL,0 ; Wriggle | OK
; Cinnabar Gym
	db 40,VULPIX,NINETALES,FLAREON,0 ; Remilia,ESunny,ESunny
	db 38,PONYTA,CHARMANDER,VULPIX,GROWLITHE,0 ; Flandre,Remilia,ELunasa,EMarisa
	db 45,RAPIDASH,0 ; ERemilia
	db 42,GROWLITHE,VULPIX,0 ; Mokou, EMarisa
; Unused
	;db 22,KOFFING,MAGNEMITE,WEEZING,0
	;db 20,MAGNEMITE,MAGNEMITE,KOFFING,MAGNEMITE,0
	;db 24,MAGNEMITE,VOLTORB,0
HikerData:
; Mt. Moon 1F
	db 10,PARASECT,PARASECT,MAGNETON,0 ; CLetty,CLetty,CSuika | OK
; Route 25
	db 15,SANDSLASH,PARASECT,0 ; CMeiling,CLetty | OK
	db 13,SANDSLASH,PARASECT,CATERPIE,CLOYSTER,0 ; CMeiling,CLetty,CRumia,CKeine | OK
	db 17,MAGNETON,0 ; CSuika | OK
; Route 9
	db 25,NIDORAN_F,METAPOD,0 ; Meiling, Rumia | OK
	db 23,CATERPIE,GASTLY,NIDORAN_F,0 ; CRumia,Keine,Meiling | OK
; Route 10
	db 26,METAPOD,MAGNETON,0 ; Rumia,Suika | OK
	db 24,METAPOD,VENONAT,0 ; Rumia,Letty | OK
; Rock Tunnel B1F
	db 22,PARASECT,PARASECT,VENONAT,0 ; CLetty,CLetty,Letty | OK
	db 24,VENONAT,0 ; Letty | OK
; Route 9/Rock Tunnel B1F
	db 25,METAPOD,NIDORAN_F,0 ; Rumia,Meiling | OK
; Rock Tunnel 1F
	db 22,PARASECT,PARASECT,CATERPIE,PONYTA,0 ; CLetty,CLetty,CRumia,Ran | OK
	db 24,NIDORAN_M,VENONAT,VENONAT,0 ; Koakuma,Letty,Letty | OK
	db 25,VENONAT,METAPOD,0 ; Letty,Rumia | OK
BikerData:
; Route 13
	db 32,GROWLITHE,METAPOD,LICKITUNG,0 ; LilyBlack,Rumia,Mokou | OK
; Route 14
	db 33,METAPOD,GROWLITHE,0 ; Rumia,LilyBlack | OK
; Route 15
	db 30,ARCANINE,ARCANINE,SEEL,METAPOD,LICKITUNG,0 ; LilyBlack,LilyBlack,Wriggle,Rumia,Mokou | OK
	db 32,CHANSEY,SEEL,METAPOD,0 ; Medicine,Wriggle,Rumia | OK
; Route 16
	db 34,CHANSEY,METAPOD,0 ; Medicine,Rumia | OK
	db 37,TANGELA,0 ; EMedicine | OK
	db 30,CHANSEY,LICKITUNG,SEEL,LICKITUNG,0 ; Medicine,Mokou,Wriggle,Mokou | OK
; Route 17
	db 32,CHANSEY,LICKITUNG,BUTTERFREE,0 ; Medicine,Mokou,ERumia | OK
	db 38,DEWGONG,0 ; EWriggle | OK
	db 33,LICKITUNG,SEEL,0 ; Mokou,Wriggle | OK
	db 34,WEEZING,BUTTERFREE,0 ; Rumia,ERumia | OK
	db 30,CHANSEY,SEEL,CHANSEY,SEEL,LICKITUNG,0 ; Medicine,Wriggle,Medicine,Wriggle,Mokou | OK
; Route 14
	db 30,CHANSEY,SEEL,GROWLITHE,METAPOD,0 ; Medicine,Wriggle,LilyBlack,Rumia | OK
	db 32,GROWLITHE,GROWLITHE,METAPOD,0 ; LilyBlack,LilyBlack,Rumia | OK
	db 34,ZUBAT,BUTTERFREE,0 ; Remilia,ERumia | OK
BurglarData:
; Cinnabar Gym
	db 40,SANDSHREW,STARYU,BLASTOISE,0 ; ESunny,EYuuka,EMarisa
	db 44,KOFFING,0 ; EMokou
	db 42,VULPIX,GROWLITHE,0 ; Remilia,ESunny
; Mansion 2F
	db 38,WARTORTLE,SANDSHREW,0 ; Marisa,ESunny | OK
; Mansion 3F
	db 42,BLASTOISE,0 ; EMarisa | OK
; Mansion B1F
	db 38,ZUBAT,DEWGONG,0 ; Remilia,EWriggle | OK
; Unused
;	db 29,GROWLITHE,VULPIX,0
;	db 33,GROWLITHE,0
;	db 28,VULPIX,CHARMANDER,PONYTA,0
EngineerData:
; Route 11
	db 24,PORYGON,0 ; Nitori | OK
	db 22,FLAREON,ZAPDOS,PORYGON,0 ; CNitori,CKanako,Nitori | OK
; Unused
;	db 21,VOLTORB,MAGNEMITE,0
Juggler1Data:
; none
FisherData:
; SS Anne 2F Rooms
	db 20,STARMIE,FLAREON,VAPOREON,0 ; CKomachi,CNitori,Hina | OK
; SS Anne B1F Rooms
	db 20,EEVEE,EEVEE,TENTACRUEL,0 ; CHina,CHina,CYuyuko | OK
; Route 12
	db 26,TENTACRUEL,DRAGONAIR,VAPOREON,0 ; CYuyuko,CSuwako,Hina | OK
	db 28,VAPOREON,DRAGONITE,0 ; Hina,Suwako | OK
	db 30,GEODUDE,0 ; Yuyuko | OK
	db 25,EEVEE,DRAGONAIR,VAPOREON,VAPOREON,0 ; CHina,CSuwako,Hina,Hina | OK
; Route 21
	db 34,VAPOREON,VAPOREON,DRAGONITE,DRAGONITE,0 ; Hina,Hina,Suwako,Suwako | OK
	db 37,GEODUDE,JOLTEON,0 ; Yuyuko,EHina | OK
	db 33,EEVEE,EEVEE,VAPOREON,VAPOREON,VAPOREON,JOLTEON,0 ; CHina,CHina,Hina,Hina,Hina,EHina | OK
	db 38,SCYTHER,JOLTEON,0 ; EKomachi,EHina | OK
; Route 12
	db 28,EEVEE,DRAGONAIR,EEVEE,TENTACRUEL,0 ; CHina,CSuwako,CHina,CYuyuko | OK
SwimmerData:
; Cerulean Gym
	db 16,EEVEE,RATICATE,0 ; CHina,Star | OK
; Route 19
	db 38,MR_MIME,SCYTHER,0 ; Komachi,EKomachi | OK
	db 36,MR_MIME,VAPOREON,JOLTEON,0 ; Komachi,Hina,EHina | OK
	db 36,DRAGONITE,OMANYTE,0 ; Suwako,ENitori | OK
	db 34,VAPOREON,MR_MIME,MR_MIME,SPEAROW,0 ; Hina,Komachi,Komachi,EStar | OK
	db 35,DRAGONITE,SNORLAX,JOLTEON,0 ; Suwako,Sanae,EHina | OK
	db 36,MR_MIME,ARTICUNO,0 ; Komachi,ESanae | OK
	db 32,VAPOREON,VAPOREON,MR_MIME,PORYGON,JOLTEON,0 ; Hina,Hina,Komachi,Nitori,EHina | OK
; Route 20
	db 38,VAPOREON,OMANYTE,0 ; Hina,ENitori | OK
	db 40,SCYTHER,0 ; EKomachi | OK
	db 36,DRAGONITE,DRAGONITE,MR_MIME,JOLTEON,0 ; Suwako,Suwako,Komachi,EHina | OK
; Route 21
	db 38,MR_MIME,SCYTHER,0 ; Komachi,EKomachi | OK
	db 40,OMANYTE,0 ; ENitori | OK
	db 38,MR_MIME,EXEGGUTOR,0 ; Komachi,EEirin | OK
	db 37,PORYGON,PIDGEOT,SPEAROW,0 ; Nitori,ECirno,EStar | OK
CueBallData:
; Route 16
	db 32,GASTLY,NIDORAN_F,GASTLY,0 ; Keine,Meiling,Keine | OK
	db 33,NIDORAN_F,GASTLY,0 ; Meiling,Keine | OK
	db 38,NIDORINA,0 ; EMeiling | OK
; Route 17
	db 33,NIDORAN_F,GASTLY,0 ; Meiling,Keine | OK
	db 34,NIDORAN_F,FARFETCHD,0 ; Meiling,Suika | OK
	db 38,ARCANINE,0 ; ELilyBlack | OK
	db 30,FARFETCHD,NIDORAN_F,GASTLY,FARFETCHD,0 ; Suika,Meiling,Keine,Suika | OK
	db 33,GASTLY,VENONAT,0 ; Keine,Letty | OK
; Route 21
	db 36,BUTTERFREE,BEEDRILL,EXEGGUTOR,0 ; ERumia,EDaiyousei,EEirin | OK
GamblerData:
; Route 11
	db 22,DODRIO,DROWZEE,0 ; CWriggle,Tewi | OK
	db 22,MAGNETON,DROWZEE,0 ; CSuika,Tewi | OK
	db 22,SLOWPOKE,DROWZEE,0 ; CYukari,Tewi | OK
	db 22,ONIX,DROWZEE,0 ; CTewi,Tewi | OK
; Route 8
	db 26,SLOWPOKE,MAGNETON,DROWZEE,0 ; CYukari,CSuika,Tewi | OK
	db 28,SEEL,DROWZEE,0 ; Wriggle,Tewi | OK
; Unused
	;db 22,ONIX,GEODUDE,GRAVELER,0
BeautyData:
; Celadon Gym
	db 25,KAKUNA,MAROWAK,SEAKING,MAGIKARP,0 ; Daiyousei,Kaguya,Yuuka,EShizuha | OK
	db 28,CHANSEY,DITTO,0 ; Medicine,EMinoriko | OK
	db 30,MOLTRES,0 ; Kanako | OK
; Route 13
	db 32,KADABRA,POLIWHIRL,MACHOKE,0 ; Merlin,Lunasa,Lyrica | OK
	db 34,EXEGGCUTE,MAROWAK,0 ; Eirin,Kaguya | OK
; Route 20
	db 40,SLOWBRO,0 ; Yukari | OK
	db 36,GEODUDE,SEAKING,JOLTEON,0 ; Yuyuko,Yuuka,EHina | OK
	db 38,POLIWAG,EXEGGUTOR,0 ; Eiki,EEirin | OK
; Route 15
	db 33,SEAKING,DITTO,0 ; Yuuka,EMinoriko | OK
	db 34,MAROWAK,MAGIKARP,0 ; Kaguya,EShizuha | OK
; Route 19
	db 36,ELECTABUZZ,POLIWRATH,MACHAMP,ALAKAZAM,CHARIZARD,0 ; Eiki,ELunasa,ELyrica,EMerlin,EReimu | OK
	db 38,CLEFABLE,JIGGLYPUFF,0 ; EPatchouli,ESakuya | OK
	db 37,MEOWTH,VENOMOTH,BLASTOISE,0 ; EChen,ELetty,EMarisa | OK
; Route 20
	db 36,PSYDUCK,NIDORINO,GOLDUCK,0 ; Alice,EKoakuma,EAlice | OK
; Unused
	;db 33,WEEPINBELL,BELLSPROUT,WEEPINBELL,0
PsychicData:
; Saffron Gym
	db 46,ELECTABUZZ,GOLDUCK,NIDORINO,CLEFABLE,0 ; Eiki,EAlice,EKoakuma,EPatchouli | OK
	db 48,MAROWAK,VOLTORB,0 ; Kaguya, EReisen | OK
	db 47,SLOWBRO,CLEFABLE,GOLDUCK,0 ; Yukari, EPatchouli,EAlice | OK
	db 50,CLEFABLE,0 ; EPatchouli | OK
RockerData:
; Vermilion Gym
	db 23,EKANS,MACHOKE,MACHOKE,0 ; Luna,Lyrica,Lyrica | OK
; Route 12
	db 33,MACHOKE,KADABRA,POLIWHIRL,0 ; Lyrica,Merlin,Lunasa | OK
JugglerData:	;joenote - tweaked some parties
; Silph Co. 5F
	db 33,KINGLER,KINGLER,0 ; Reisen,Reisen | OK
; Victory Road 2F
	db 53,NIDORINO,NIDORINO,CLEFABLE,VOLTORB,0 ; EKoakuma,EKoakuma,EPatchouli,EReisen | OK
	db 57,GOLDUCK,VOLTORB,0	; EAlice,EReisen | OK
; Fuchsia Gym
	db 37,METAPOD,CHANSEY,TANGELA,BUTTERFREE,0 ; Rumia,Medicine,EMedicine,ERumia | OK
	db 42,KINGLER,TANGELA,0 ; Reisen,EMedicine | OK
	db 38,EXEGGCUTE,JOLTEON,0 ; Eirin,EHina | OK
; Unused
	;db 34,DROWZEE,KADABRA,0	;joenote - in fuschia gym, replaced by Janine
	;db 33,HYPNO,0
TamerData:
; Fuchsia Gym
	db 38,CHANSEY,VOLTORB,0 ; Medicine,EReisen | OK
	db 37,VAPOREON,CHANSEY,BUTTERFREE,0 ; Hina,Medicine,ERumia | OK
; Viridian Gym
	db 52,MAGMAR,0 ; EEiki | OK
	db 49,RAPIDASH,HAUNTER,0 ; ERan,EKeine | OK
; Victory Road 2F
	db 55,HAUNTER,MAGMAR,0 ; EKeine,EEiki | OK
; Unused
	;db 42,RHYHORN,PRIMEAPE,ARBOK,TAUROS,0
BirdKeeperData:
; Route 13
	db 33,HORSEA,MUK,0 ; Aya,Mystia | OK
	db 30,KAKUNA,EKANS,PIDGEOTTO,RATICATE,RAICHU,0 ; Daiyousei,Luna,Cirno,Star,Sunny | OK
	db 32,HORSEA,HORSEA,HORSEA,HORSEA,0 ; Aya,Aya,Aya,Aya | OK
; Route 14
	db 38,SEADRA,0 ; EAya | OK
	db 33,MUK,PIDGEOTTO,0 ; Mystia,Cirno | OK
; Route 15
	db 30,KAKUNA,MUK,PIDGEOTTO,HORSEA,0 ; Daiyousei,Mystia,Cirno,Aya | OK
	db 32,MANKEY,GROWLITHE,SANDSHREW,0 ; LilyWhite,LilyBlack,ESunny | OK
; Route 18
	db 34,ODDISH,GLOOM,0 ; CFlandre,Flandre | OK
	db 38,SHELLDER,0 ; EMystia | OK
	db 30,MANKEY,RAICHU,EKANS,RATICATE,0 ; LilyWhite,Sunny,Luna,Star | OK
; Route 20
	db 38,ZUBAT,GLOOM,SEADRA,0 ; Remilia,Flandre,EAya | OK
; Route 14
	db 32,HORSEA,RAICHU,ARBOK,0 ; Aya,Sunny,ELuna | OK
	db 30,MUK,HORSEA,EKANS,SPEAROW,0 ; Mystia,Aya,Luna,EStar | OK
	db 33,MUK,HORSEA,0 ; Mystia,Aya | OK
	db 32,PIDGEOTTO,RATICATE,SANDSHREW,0 ; Cirno,Star,ESunny | OK
; Unused
	;db 39,PIDGEOTTO,PIDGEOTTO,PIDGEY,PIDGEOTTO,0
	;db 42,FARFETCHD,FEAROW,0
BlackbeltData:
; Fighting Dojo
	db 40,DRAGONITE,MOLTRES,NIDORINA,BUTTERFREE,0 ; Suwako,Kanako,EMeiling,ERumia | OK
	db 35,MANKEY,GASTLY,FARFETCHD,0 ; CSuika,Keine,Suika | OK
	db 36,FARFETCHD,NIDORAN_F,0 ; Suika,Meiling | OK
	db 39,BUTTERFREE,0 ; ERumia | OK
	db 35,HITMONCHAN,NIDORAN_F,LICKITUNG,0 ; CMokou,Meiling,Mokou | OK
; Viridian Gym
	db 49,NIDORINA,RAPIDASH,0 ; EMeiling,ERan | OK
	db 51,DODUO,0 ; ESuika | OK
	db 48,NIDORINA,MEOWTH,RAPIDASH,0 ; EMeiling,EChen,ERan | OK
; Victory Road 2F
	db 56,NIDORINA,BUTTERFREE,DODUO,0 ; EMeiling,ERumia,ESuika | OK
Green1Data:
	db 5,CHARMANDER,0 ; CReimu | OK
	db 5,VULPIX,0 ; CSakuya | OK
	db 5,SQUIRTLE,0 ; CMarisa | OK
; Route 22
	db $FF,9,PERSIAN,8,CHARMANDER,0 ; CAlice,CReimu | OK
	db $FF,9,PERSIAN,8,VULPIX,0 ; CAlice,CSakuya | OK
	db $FF,9,PERSIAN,8,SQUIRTLE,0 ; CAlice,CMarisa | OK
; Cerulean City
	db $FF,18,PSYDUCK,15,GROWLITHE,15,CLOYSTER,17,CHARMANDER,0 ; Alice,LilyBlack,CKeine,CReimu | OK
	db $FF,18,PSYDUCK,15,GROWLITHE,15,CLOYSTER,17,VULPIX,0 ; Alice,LilyBlack,CKeine,CSakuya | OK
	db $FF,18,PSYDUCK,15,GROWLITHE,15,CLOYSTER,17,SQUIRTLE,0 ; Alice,LilyBlack,CKeine,CMarisa | OK
ProfOakData:
; Unused - joenote: restored
	db $FF,73,GOLBAT,74,GRAVELER,74,DODUO,76,CHARIZARD,77,MAGMAR,0 ; ERemilia,EYuyuko,ESuika,EReimu,EEiki | OK
	db $FF,73,GOLBAT,74,GRAVELER,74,DODUO,76,JIGGLYPUFF,77,MAGMAR,0 ; ERemilia,EYuyuko,ESuika,ESakuya,EEiki | OK
	db $FF,73,GOLBAT,74,GRAVELER,74,DODUO,76,BLASTOISE,77,MAGMAR,0 ; ERemilia,EYuyuko,ESuika,EMarisa,EEiki | OK
ChiefData:
; none
;joenote - special fight with the silph chief
	db $FF,78,OMANYTE,78,EXEGGUTOR,80,DRATINI,82,MAGNEMITE,0 ; ENitori,EEirin,EKanako,EYukari | OK
	db $FF,128,MISSINGNO_B5,0	;joenote - fight with missingno
	db $FF,128,MISSINGNO_B5,128,MISSINGNO_B5,128,MISSINGNO_B5,0	;joenote - another superboss
ScientistData:
; Silph Co. 2F
	db 30,PORYGON,ARBOK,PORYGON,MOLTRES,0 ; Nitori,ELuna,Nitori,Kanako | OK
	db 32,PORYGON,HORSEA,WARTORTLE,0 ; Nitori,Aya,Marisa | OK
; Silph Co. 3F
	db 34,PORYGON,WARTORTLE,0 ; Nitori,Marisa | OK
; Silph Co. 4F
	db 37,HAUNTER,0 ; EKeine | OK
; Silph Co. 5F
	db 31,MACHOKE,PORYGON,ARBOK,WARTORTLE,0 ; Lyrica,Nitori,ELuna,Marisa | OK
; Silph Co. 6F
	db 30,MACHOKE,PORYGON,WARTORTLE,PORYGON,MOLTRES,0 ; Lyrica,Nitori,Marisa,Nitori,Kanako | OK
; Silph Co. 7F
	db 34,MOLTRES,ARBOK,0 ; Kanako,ELuna | OK
; Silph Co. 8F
	db 34,PORYGON,ARBOK,0 ; Nitori,ELuna | OK
; Silph Co. 9F
	db 32,MACHOKE,PORYGON,WARTORTLE,0 ; Lyrica,Nitori,Marisa | OK
; Silph Co. 10F
	db 34,PORYGON,MOLTRES,0 ; Nitori,Kanako | OK
; Mansion 3F
	db 38,GLOOM,OMANYTE,MACHAMP,0 ; Flandre,ENitori,ELyrica | OK
; Mansion B1F
	db 39,ARBOK,OMANYTE,0 ; ELuna,ENitori | OK
; Unused/joenote - restored and put in Mansion 1F
	db 39,MOLTRES,OMANYTE,0 ; Kanako,ENitori | OK
GiovanniData:
; Rocket Hideout B4F
	db $FF,29,FARFETCHD,28,PONYTA,33,MEWTWO,0 ; Suika,Ran,ESuwako | OK
; Silph Co. 11F
	db $FF,40,RAPIDASH,39,SLOWBRO,42,DODUO,44,MEWTWO,0 ; ERan,Yukari,ESuika,ESuwako | OK
; Viridian Gym
	db $FF,56,VENUSAUR,56,GENGAR,57,DODUO,60,MEWTWO,60,DRATINI,0 ; Genji,HKeine,ESuika,ESuwako,EKanako | OK
RocketData:
; Mt. Moon B2F
	db 13,DIGLETT,NIDOQUEEN,0 ; CChen,CKoakuma | OK
	db 11,CATERPIE,DIGLETT,NIDOQUEEN,0 ; CRumia,CChen,CKoakuma | OK
	db 12,NIDOQUEEN,RHYDON,0 ; CKoakuma,CMedicine | OK
	db 16,GROWLITHE,0 ; LilyBlack | OK
; Cerulean City
	db 18,CHANSEY,NIDORAN_M,0 ; Medicine,Koakuma | OK
; Route 24
	db 15,CATERPIE,NIDOQUEEN,0 ; CRumia,CKoakuma | OK
; Game Corner
	db 24,CHANSEY,NIDORAN_M,0 ; Medicine,Koakuma | OK
; Rocket Hideout B1F
	db 24,CLEFAIRY,NIDORAN_F,0 ; Patchouli,Meiling | OK
	db 24,DUGTRIO,DUGTRIO,0 ; Chen,Chen | OK
	db 23,NIDORAN_M,CHANSEY,CHANSEY,0 ; Koakuma,Medicine,Medicine | OK
	db 22,DUGTRIO,CHANSEY,NIDORAN_M,DUGTRIO,0 ; Chen,Medicine,Koakuma,Chen | OK
	db 25,CHANSEY,METAPOD,0 ; Medicine,Rumia | OK
; Rocket Hideout B2F
	db 21,NIDORAN_M,DUGTRIO,NIDORAN_M,DUGTRIO,CHANSEY,0 ; Koakuma,Chen,Koakuma,Chen,Medicine | OK
; Rocket Hideout B3F
	db 24,DUGTRIO,DUGTRIO,METAPOD,0 ; Chen,Chen,Rumia | OK
	db 25,NIDORAN_F,METAPOD,0 ; Meiling,Rumia | OK
; Rocket Hideout B4F
	db 27,NIDORAN_F,METAPOD,BUTTERFREE,0 ; Meiling,Rumia,ERumia | OK
	db 27,CHANSEY,METAPOD,BUTTERFREE,0 ; Medicine,Rumia,ERumia | OK
	db 26,CHANSEY,NIDORAN_M,0 ; Medicine,Koakuma | OK
; Pokémon Tower 7F
	db 28,NIDORAN_M,METAPOD,CHANSEY,0 ; Koakuma,Rumia,Medicine | OK
	db 30,VAPOREON,BUTTERFREE,0 ; Hina,ERumia | OK
	db 25,NIDORAN_M,VAPOREON,NIDORAN_M,CHANSEY,0 ; Koakuma,Hina,Koakuma,Medicine | OK
; Silph Co. 2F
	db 33,KADABRA,NIDORAN_M,0 ; Merlin, Koakuma | OK
	db 30,NIDORAN_M,KADABRA,POLIWHIRL,DUGTRIO,NIDORAN_M,0 ; Koakuma,Merlin,Lunasa,Chen,Koakuma | OK
; Silph Co. 3F
	db 32,DUGTRIO,KADABRA,GASTLY,0 ; Chen,Merlin,Keine | OK
; Silph Co. 4F
	db 33,MACHOP,POLIWHIRL,0 ; Meiling,Lunasa | OK
	db 32,METAPOD,NIDORAN_M,NIDORAN_F,0 ; Rumia,Koakuma,Meiling | OK
; Silph Co. 5F
	db 38,OMANYTE,0 ; ENitori | OK
	db 38,KABUTOPS,0 ; EMomiji | OK
; Silph Co. 6F
	db 33,NIDORAN_F,NIDORAN_F,0 ; Meiling,Meiling | OK
	db 32,NIDORAN_M,NIDORAN_M,METAPOD,0 ; Koakuma,Koakuma,Rumia | OK
; Silph Co. 7F
	db 30,DUGTRIO,CHANSEY,CHANSEY,NIDORAN_M,0 ; Chen,Medicine,Medicine,Koakuma | OK
	db 33,NIDORAN_F,NIDORAN_F,0 ; Meiling,Meiling | OK
	db 33,METAPOD,BUTTERFREE,0 ; Rumia,ERumia | OK
; Silph Co. 8F
	db 30,DUGTRIO,CHANSEY,NIDORAN_M,KABUTO,0 ; Chen,Medicine,Koakuma,Momiji | OK
	db 32,KABUTO,CHANSEY,CHANSEY,0 ; Momiji,Medicine,Medicine | OK
; Silph Co. 9F
	db 32,METAPOD,CHANSEY,NIDORAN_F,0 ; Rumia,Medicine,Meiling | OK
	db 32,NIDORAN_M,CHANSEY,KADABRA,0 ; Koakuma,Medicine,Merlin | OK
; Silph Co. 10F
	db 38,BUTTERFREE,0 ; ERumia | OK
; Silph Co. 11F
	db 30,DUGTRIO,NIDORAN_M,KADABRA,METAPOD,KADABRA,0 ; Chen,Koakuma,Merlin,Rumia,Merlin | OK
	db 36,KADABRA,POLIWHIRL,BUTTERFREE,0 ; Merlin,Lunasa,ERumia | OK
; Unused
	;db 26,DROWZEE,KOFFING,0
CooltrainerMData:
; Viridian Gym
	db 49,KABUTOPS,MEWTWO,0 ; EMomiji,ESuwako | OK
; Victory Road 3F
	db 55,JIGGLYPUFF,BLASTOISE,VILEPLUME,0 ; ESakuya,EMarisa,EFlandre | OK
	db 55,SCYTHER,MEWTWO,GRAVELER,0 ; EKomachi,ESuwako,EYuyuko | OK
; Victory Road 1F
	db 54,MACHAMP,POLIWRATH,ALAKAZAM,GOLBAT,0 ; ELyrica,ELunasa,EMerlin,ERemilia | OK
; Viridian Gym
	db 49,VENOMOTH,RAPIDASH,0 ; ELetty,ERan | OK
	db 52,MEWTWO,0 ; ESuwako | OK
; Unused
	;db 45,KINGLER,STARMIE,0
	;db 44,IVYSAUR,WARTORTLE,CHARMELEON,0
	;db 49,NIDOKING,0
	;db 44,KINGLER,CLOYSTER,0
CooltrainerFData:
; Celadon Gym
	db 28,KAKUNA,SNORLAX,SEAKING,0 ; Daiyousei,Sanae,Yuuka | OK
; Victory Road 3F
	db 55,EXEGGUTOR,VENOMOTH,RAPIDASH,0 ; EEirin,ELetty,CRan | OK
	db 55,DEWGONG,HYPNO,CHARIZARD,0 ; EWriggle,ETewi,EReimu | OK
; Victory Road 1F
	db 56,ARTICUNO,DRATINI,0 ; ESanae,EKanako | OK
; Fuschia Gym	;joenote - added Janine
	db 39,VOLTORB,EXEGGUTOR,0	; EReisen,EEirin
; Unused
	;db 45,IVYSAUR,VENUSAUR,0
	;db 45,NIDORINA,NIDOQUEEN,0
	;db 43,PERSIAN,NINETALES,RAICHU,0

BrunoData:
	db $FF,61,BUTTERFREE,63,NIDORINA,63,GENGAR,64,DODUO,66,KOFFING,0 ; ERumia,EMeiling,HKeine,ESuika,EMokou | OK
BrockData:
	db $FF,12,PARASECT,15,MAGNETON,0 ; CLetty,CSuika | OK
MistyData:
	db $FF,18,DRAGONAIR,22,SPEAROW,0 ; CSuwako,EStar | OK
LtSurgeData:
	db $FF,24,MACHOP,25,WARTORTLE,27,IVYSAUR,0 ; Lyrica,Marisa,Kirisame | OK
ErikaData:
	db $FF,35,TANGELA,36,ARTICUNO,37,STARYU,0 ; EMedicine,ESanae,EYuuka | OK
KogaData:
	db $FF,42,VOLTORB,42,TENTACOOL,44,EXEGGUTOR,46,GRAVELER,0 ; EReisen,EYoumu,EEirin,EYuyuko | OK
BlaineData:
	db $FF,45,BLASTOISE,47,KOFFING,47,GOLBAT,51,VILEPLUME,0 ; EMarisa,EMokou,ERemilia,EFlandre | OK
SabrinaData:
	db $FF,52,HITMONLEE,53,BULBASAUR,53,MAGMAR,56,MAGNEMITE,0 ; EKaguya,Hakurei,EEiki,EYukari | OK
GentlemanData:
; SS Anne 1F Rooms
	db 22,ZAPDOS,DRAGONAIR,0 ; CSuwako,CKanako | OK
	db 22,POLIWHIRL,KADABRA,0 ; Lunasa,Merlin | OK
; SS Anne 2F Rooms/Vermilion Gym
	db 24,MACHOKE,0 ; Lyrica | OK
; SS Anne 2F Rooms
	db 20,JYNX,CLEFAIRY,0 ; CEiki,Patchouli | OK
;joenote - special fight with mr fuji
	db $FF,75,VENUSAUR,76,IVYSAUR,76,BULBASAUR,78,GOLDUCK,80,STARYU,0 ; Genji,Kirisame,Hakurei,EAlice,EYuuka | OK
; Unused
	;db 48,PRIMEAPE,0
Green2Data:
; SS Anne 2F
	db $FF,22,PSYDUCK,20,GROWLITHE,22,GASTLY,24,CHARMELEON,0 ; Alice,LilyBlack,Keine,Reimu | OK
	db $FF,22,PSYDUCK,20,GROWLITHE,22,GASTLY,24,NINETALES,0 ; Alice,LilyBlack,Keine,Sakuya | OK
	db $FF,22,PSYDUCK,20,GROWLITHE,22,GASTLY,24,WARTORTLE,0 ; Alice,LilyBlack,Keine,Marisa | OK
; Pokémon Tower 2F
	db $FF,28,PSYDUCK,26,TENTACRUEL,25,FARFETCHD,26,GASTLY,28,CHARMELEON,0 ; Alice,CYuyuko,Suika,Keine,Reimu | OK
	db $FF,28,PSYDUCK,26,TENTACRUEL,25,FARFETCHD,26,GASTLY,28,NINETALES,0 ; Alice,CYuyuko,Suika,Keine,Sakuya | OK
	db $FF,28,PSYDUCK,26,TENTACRUEL,25,FARFETCHD,26,GASTLY,28,WARTORTLE,0 ; Alice,CYuyuko,Suika,Keine,Marisa | OK
; Silph Co. 7F
	db $FF,37,GOLDUCK,38,GEODUDE,35,FARFETCHD,35,HAUNTER,40,CHARIZARD,0 ; EAlice,Yuyuko,Suika,EKeine,EReimu | OK
	db $FF,37,GOLDUCK,38,GEODUDE,35,FARFETCHD,35,HAUNTER,40,JIGGLYPUFF,0 ; EAlice,Yuyuko,Suika,EKeine,ESakuya | OK
	db $FF,37,GOLDUCK,38,GEODUDE,35,FARFETCHD,35,HAUNTER,40,BLASTOISE,0 ; EAlice,Yuyuko,Suika,EKeine,EMarisa | OK
; Route 22
	db $FF,57,GOLDUCK,55,GRAVELER,55,FARFETCHD,57,HAUNTER,60,GOLBAT,63,CHARIZARD,0 ; EAlice,EYuyuko,ESuika,EKeine,ERemilia,EReimu | OK
	db $FF,57,GOLDUCK,55,GRAVELER,55,FARFETCHD,57,HAUNTER,60,GOLBAT,63,JIGGLYPUFF,0 ; EAlice,EYuyuko,ESuika,EKeine,ERemilia,ESakuya | OK
	db $FF,57,GOLDUCK,55,GRAVELER,55,FARFETCHD,57,HAUNTER,60,GOLBAT,63,BLASTOISE,0 ; EAlice,EYuyuko,ESuika,EKeine,ERemilia,EMarisa | OK
Green3Data:
	db $FF,69,GOLDUCK,71,GRAVELER,71,FARFETCHD,71,GOLBAT,73,DRATINI,75,CHARIZARD,0 ; EAlice,EYuyuko,ESuika,ERemilia,EKanako,EReimu | OK
	db $FF,69,GOLDUCK,71,GRAVELER,71,FARFETCHD,71,GOLBAT,73,DRATINI,75,JIGGLYPUFF,0 ; EAlice,EYuyuko,ESuika,ERemilia,EKanako,ESakuya | OK
	db $FF,69,GOLDUCK,71,GRAVELER,71,FARFETCHD,71,GOLBAT,73,DRATINI,75,BLASTOISE,0 ; EAlice,EYuyuko,ESuika,ERemilia,EKanako,EMarisa | OK
LoreleiData:
	db $FF,61,VENOMOTH,61,SCYTHER,62,PIDGEOT,63,MAGMAR,63,JIGGLYPUFF,0 ; ELetty,EKomachi,ECirno,EEiki,ESakuya | OK
ChannelerData:
; Pokémon Tower 3F
	db 27,POLIWAG,0 ; CLunasa | OK
	db 28,ABRA,0 ; CMerlin | OK
	db 26,MACHOP,0 ; CLyrica | OK
; Pokémon Tower 4F
	db 28,ABRA,0 ; CMerlin | OK
	db 27,MACHOP,WEEPINBELL,0 ; CLyrica,CYoumu | OK
	db 26,POLIWAG,0 ; CLunasa | OK
; Pokémon Tower 5F
	db 28,VICTREEBEL,0 ; Youmu | OK
	db 26,KADABRA,0 ; Merlin | OK
	db 28,POLIWHIRL,0 ; Lunasa | OK
	db 26,MACHOKE,0 ; Lyrica | OK
; Pokémon Tower 6F
	db 26,POLIWHIRL,KADABRA,MACHOKE,0 ; Lunasa,Merlin,Lyrica | OK
	db 28,VICTREEBEL,0 ; Youmu | OK
	db 28,TENTACRUEL,0 ; CYuyuko | OK
; Saffron Gym
	db 47,GEODUDE,GRAVELER,0 ; Yuyuko,EYuyuko | OK
	db 48,TENTACOOL,0 ; EYoumu | OK
	db 46,ARCANINE,SCYTHER,GOLBAT,0 ; ELilyBlack,EKomachi,ERemilia | OK
; Unused
	;db 22,GASTLY,0
	;db 24,GASTLY,0
	;db 23,GASTLY,GASTLY,0
	;db 24,GASTLY,0
	;db 24,HAUNTER,0
	;db 24,GASTLY,0
	;db 24,GASTLY,0
	;db 24,GASTLY,0
AgathaData:
	db $FF,63,POLIWRATH,65,RAPIDASH,65,TENTACOOL,66,MAGNEMITE,68,GRAVELER,0 ; ELunasa,ERan,EYoumu,EYukari,EYuyuko | OK
LanceData:
	db $FF,65,DEWGONG,67,NIDORINA,68,GOLBAT,69,STARYU,70,NIDORINA,0 ; EWriggle,EMeiling,ERemilia,EYuuka,EMeiling | OK
RosterLabelEnd::
