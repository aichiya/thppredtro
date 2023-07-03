; super rod data
; format: map, pointer to fishing group
;joenote - Ditto encounters set in fishing group 2 (route 22 set to group 1)
;		- Super Rod now randomly increases level by 0 to 7
SuperRodData:
	dbw PALLET_TOWN, FishingGroup1
	dbw VIRIDIAN_CITY, FishingGroup1
	dbw CERULEAN_CITY, FishingGroup3
	dbw VERMILION_CITY, FishingGroup4
	dbw CELADON_CITY, FishingGroup5
	dbw FUCHSIA_CITY, FishingGroup10
	dbw CINNABAR_ISLAND, FishingGroup8
	dbw ROUTE_4, FishingGroup3
	dbw ROUTE_6, FishingGroup4
	dbw ROUTE_10, FishingGroup5
	dbw ROUTE_11, FishingGroup4
	dbw ROUTE_12, FishingGroup7
	dbw ROUTE_13, FishingGroup7
	dbw ROUTE_17, FishingGroup7
	dbw ROUTE_18, FishingGroup7
	dbw ROUTE_19, FishingGroup8
	dbw ROUTE_20, FishingGroup8
	dbw ROUTE_21, FishingGroup8
	dbw ROUTE_22, FishingGroup1
	dbw ROUTE_23, FishingGroup9
	dbw ROUTE_24, FishingGroup3
	dbw ROUTE_25, FishingGroup3
	dbw CERULEAN_GYM, FishingGroup3
	dbw VERMILION_DOCK, FishingGroup4
	dbw SEAFOAM_ISLANDS_4, FishingGroup8
	dbw SEAFOAM_ISLANDS_5, FishingGroup8
	dbw SAFARI_ZONE_EAST, FishingGroup6
	dbw SAFARI_ZONE_NORTH, FishingGroup6
	dbw SAFARI_ZONE_WEST, FishingGroup6
	dbw SAFARI_ZONE_CENTER, FishingGroup6
	dbw UNKNOWN_DUNGEON_2, FishingGroup9
	dbw UNKNOWN_DUNGEON_3, FishingGroup2
	dbw UNKNOWN_DUNGEON_1, FishingGroup9
	db $FF

SuperRodLabelStart::
; fishing groups
; number of monsters, followed by level/monster pairs
FishingGroup1:
	db 2
	db 35,VAPOREON     ; Hina
	db 35,OMANYTE     ; ENitori

FishingGroup2:
	db 4
	db 60,JOLTEON     ; EHina
	db 60,OMANYTE     ; ENitori
	db 60,MEWTWO     ; ESuwako
	db 60,GRAVELER     ; EYuyuko
	
FishingGroup3:
	db 3
	db 35,VAPOREON     ; Hina
	db 35,OMANYTE     ; ENitori
	db 35,TENTACRUEL     ; CYuyuko

FishingGroup4:
	db 2
	db 35,VAPOREON     ; Hina
	db 35,OMANYTE     ; ENitori

FishingGroup5:
	db 2
	db 35,VAPOREON     ; Hina
	db 35,OMANYTE     ; ENitori

FishingGroup6:
	db 4
	db 35,VAPOREON     ; Hina
	db 35,PORYGON     ; Nitori
	db 35,DRAGONAIR     ; CSuwako
	db 35,TENTACRUEL     ; CYuyuko

FishingGroup7:
	db 4
	db 35,VAPOREON     ; Hina
	db 35,PORYGON     ; Nitori
	db 35,JOLTEON     ; EHina
	db 35,TENTACRUEL     ; CYuyuko

FishingGroup8:
	db 4
	db 35,VAPOREON     ; Hina
	db 35,PORYGON     ; Nitori
	db 35,JOLTEON     ; EHina
	db 35,TENTACRUEL     ; CYuyuko

FishingGroup9:
	db 4
	db 35,VAPOREON     ; Hina
	db 35,PORYGON     ; Nitori
	db 35,JOLTEON     ; EHina
	db 35,TENTACRUEL     ; CYuyuko

FishingGroup10:
	db 4
	db 35,VAPOREON     ; Hina
	db 35,PORYGON     ; Nitori
	db 35,JOLTEON     ; EHina
	db 35,TENTACRUEL     ; CYuyuko

SuperRodLabelEnd::
