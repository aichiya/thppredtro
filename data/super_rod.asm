ReadSuperRodData:
	call GetPredefRegisters

;joenote - takes the value in D as an argument
;D = 0 as argument --> super rod functionality
;D = 'mon hex ID as argument --> If the 'mon in D is fishable with the super rod on this map, return D = 0
	
; return e = 2 if no fish on this map
; return e = 1 if a bite, bc = level,species
; return e = 0 if no bite
	ld a, [wCurMap]
	push de
	ld de, 3 ; each fishing group is three bytes wide
	ld hl, SuperRodData
	call IsInArray
	pop de
	jr c, .ReadFishingGroup
	ld e, $2 ; $2 if no fishing groups found
	ret

.ReadFishingGroup
; hl points to the fishing group entry in the index

	;joenote - if wild pokemon are randomized, then don't do the joke dittos
	ld a, [hl]
	cp UNKNOWN_DUNGEON_3
	jr nz, .skipmapID
	CheckEvent EVENT_8DE
	jr z, .skipmapID
	inc hl
	inc hl
	inc hl
	
.skipmapID
	inc hl ; skip map id

	; read fishing group address
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld b, [hl] ; how many mons in group
	inc hl ; point to data
	ld e, $0 ; no bite yet

;joenote - added functionality where we can now check of a 'mon in D is in the fishing group.
	ld a, d
	and a
	jr nz, .CheckIfInGroup
	
.RandomLoop
	call Random
	srl a
	ret c ; 50% chance of no battle

	and %11 ; 2-bit random number
	cp b
	jr nc, .RandomLoop ; if a is greater than the number of mons, regenerate

	; get the mon
	add a
	ld c, a
	ld b, $0
	add hl, bc
	ld b, [hl] ; level
	inc hl
	ld c, [hl] ; species
	ld e, $1 ; $1 if there's a bite
	ret

.CheckIfInGroup
	inc hl
	ld a, [hli]
	sub d
	jr z, .found
	dec b
	jr nz, .CheckIfInGroup
	ret
.found
	ld d, a
	ret

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
