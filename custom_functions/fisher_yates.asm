;randomizes an encountered wild pokemon
ReplaceWildMon:
	call _ReplaceMon
	call GetPredefRegisters
	ret

;randomizes the game corner pokemon prizes
randomMonPrizes:
	ld a, [wPrize1]
	ld [wcf91], a
	call _ReplaceMon
	ld a, [wcf91]
	ld [wPrize1], a
	
	ld a, [wPrize2]
	ld [wcf91], a
	call _ReplaceMon
	ld a, [wcf91]
	ld [wPrize2], a
	
	ld a, [wPrize3]
	ld [wcf91], a
	call _ReplaceMon
	ld a, [wcf91]
	ld [wPrize3], a
	
	call GetPredefRegisters
	ret

;takes a mon value in wd11e
;finds the vanilla mon value that would randomize to it
;saves it back into wd11e
LookupWildRandomMon:
	CheckEvent EVENT_8DE
	jr z, .return
	
	ld hl, ListRealPkmn
.loop	
	ld a, [hl]
	and a
	jr z, .return
	ld [wcf91], a
	push hl
	call _ReplaceMon
	pop hl
	ld a, [wcf91]
	ld b, a
	ld a, [wd11e]
	cp b
	jr z, .match
	inc hl
	jr .loop
.match
	ld a, [hl]
	ld [wd11e], a
.return
	call GetPredefRegisters
	ret

;takes a pokemon value in wcf91
;converts the value to its randomized list value
;stores that value back into wcf91 and wEnemyMonSpecies2
_ReplaceMon:
	CheckEvent EVENT_8DE
	ret z
	
	CheckEvent EVENT_10E   ;active ghost marowak?
	ret nz
	
	ld a, [wRandomizerSeed]
	and a 
	jr nz, .no_update
	ld a, [wPlayerID]
	ld [wRandomizerSeed], a
	and a 
	jr nz, .no_update 
	call Random	
	ld [wRandomizerSeed], a
.no_update
	ld [wUnusedD722], a
	
	;stack pointer needs to be greater than or equal to $DF40
	ld hl, $0000
	add hl, sp
	ld a, l
	cp $40
	ret c
	
	ld hl, MonListC
	CheckEvent EVENT_GOT_STARTER
	jr nz, .notstarter
	ld hl, MonListStarter
.notstarter
	ld a, [wcf91]
	ld de, $0001
	push hl
	call IsInArray
	pop hl
	jr c, .listfound
	
	ld a, [wcf91]
	ld hl, MonListB
	ld de, $0001
	push hl
	call IsInArray
	pop hl
	jr c, .listfound
	
	ld a, [wcf91]
	ld hl, MonListA
	ld de, $0001
	push hl
	call IsInArray
	pop hl
	ret nc	;return if not in list

.listfound
	;B now holds the offset of the selected mon
	ld a, b
	ld [wUnusedD722 + 1], a
	
	ld d, h
	ld e, l
	
	;DE now points to the mon list
	
	ld c, $00
.loop
	ld a, [hli]
	cp $FF
	jr z, .next
	inc c
	jr .loop
.next

	;C now holds the number of mons in the list
	
	ld hl, $DF00
.loop2
	ld a, [de]
	cp $FF
	jr z, .next2
	ld [hli], a
	inc de
	jr .loop2 
.next2
	
	;the mon list is now loaded into $DF00 of the stack and upward
	
	ld hl, $DF00
.loop3
	ld a, [wUnusedD722]
.loop_remainder
	sub c
	jr nc, .loop_remainder
	add c
	
	ld d, h
	ld e, l
	
	add l
	ld l, a
	
	ld a, [hl]
	ld b, a
	ld a, [de]
	ld [hl], a
	ld a, b
	ld [de], a
	
	ld a, [wUnusedD722 + 1]
	cp e
	jr z, .next3
	
	
	ld h, d
	ld l, e
	
	ld a, [wUnusedD722]
	add b
	ld [wUnusedD722], a
	inc hl
	dec c
	jr .loop3
.next3
	ld a, [de]
	ld [wcf91], a
	ld [wEnemyMonSpecies2], a
	ret


MonListC:
	db WEEDLE     ; Fairy $70
	;fall through
MonListStarter:	;because not all mons in c-tier are viable as a starter pokemon
	db CHARMANDER     ; CReimu $B0
	db SQUIRTLE     ; CMarisa $B1
	db CATERPIE     ; CRumia $7B
	db PIDGEY     ; CCirno $24
	db RATTATA     ; CStar $A5
	db FEAROW     ; CLuna $23
	db PIKACHU     ; CSunny $54
	db SANDSLASH     ; CMeiling $61
	db NIDOQUEEN     ; CKoakuma $10
	db NIDOKING     ; CPatchouli $07
	db VULPIX     ; CSakuya $52
	db WIGGLYTUFF     ; CRemilia $65
	db ODDISH     ; CFlandre $B9
	db PARASECT     ; CLetty $2E
	db DIGLETT     ; CChen $3B
	db PERSIAN     ; CAlice $90
	db POLIWAG     ; CLunasa $47
	db ABRA     ; CMerlin $94
	db MACHOP     ; CLyrica $6A
	db WEEPINBELL     ; CYoumu $BD
	db TENTACRUEL     ; CYuyuko $9B
	db GOLEM     ; CRan $31
	db SLOWPOKE     ; CYukari $25
	db MAGNETON     ; CSuika $36
	db DODRIO     ; CWriggle $74
	db GRIMER     ; CMystia $0D
	db CLOYSTER     ; CKeine $8B
	db ONIX     ; CTewi $22
	db KRABBY     ; CReisen $4E
	db ELECTRODE     ; CEirin $8D
	db CUBONE     ; CKaguya $11
	db HITMONCHAN     ; CMokou $2C
	db RHYDON     ; CMedicine $01
	db KANGASKHAN     ; CAya $02
	db GOLDEEN     ; CYuuka $9D
	db STARMIE     ; CKomachi $98
	db JYNX     ; CEiki $48
	db PINSIR     ; CShizuha $1D
	db GYARADOS     ; CMinoriko $16
	db EEVEE     ; CHina $66
	db FLAREON     ; CNitori $67
	db OMASTAR     ; CMomiji $63
	db AERODACTYL     ; CSanae $AB
	db ZAPDOS     ; CKanako $4B
	db DRAGONAIR     ; CSuwako $59
	db $FF
MonListB:
	db CHARMELEON     ; Reimu $B2
	db WARTORTLE     ; Marisa $B3
	db METAPOD     ; Rumia $7C
	db KAKUNA     ; Daiyousei $71
	db PIDGEOTTO     ; Cirno $96
	db RATICATE     ; Star $A6
	db EKANS     ; Luna $6C
	db RAICHU     ; Sunny $55
	db NIDORAN_F     ; Meiling $0F
	db NIDORAN_M     ; Koakuma $03
	db CLEFAIRY     ; Patchouli $04
	db NINETALES     ; Sakuya $53
	db ZUBAT     ; Remilia $6B
	db GLOOM     ; Flandre $BA
	db VENONAT     ; Letty $41
	db DUGTRIO     ; Chen $76
	db PSYDUCK     ; Alice $2F
	db MANKEY     ; LilyWhite $39
	db GROWLITHE     ; LilyBlack $21
	db POLIWHIRL     ; Lunasa $6E
	db KADABRA     ; Merlin $26
	db MACHOKE     ; Lyrica $29
	db VICTREEBEL     ; Youmu $BE
	db GEODUDE     ; Yuyuko $A9
	db PONYTA     ; Ran $A3
	db SLOWBRO     ; Yukari $08
	db FARFETCHD     ; Suika $40
	db SEEL     ; Wriggle $3A
	db MUK     ; Mystia $88
	db GASTLY     ; Keine $19
	db DROWZEE     ; Tewi $30
	db KINGLER     ; Reisen $8A
	db EXEGGCUTE     ; Eirin $0C
	db MAROWAK     ; Kaguya $91
	db LICKITUNG     ; Mokou $0B
	db CHANSEY     ; Medicine $28
	db HORSEA     ; Aya $5C
	db SEAKING     ; Yuuka $9E
	db MR_MIME     ; Komachi $2A
	db ELECTABUZZ     ; Eiki $35
	db TAUROS     ; Shizuha $3C
	db LAPRAS     ; Minoriko $13
	db VAPOREON     ; Hina $69
	db PORYGON     ; Nitori $AA
	db KABUTO     ; Momiji $5A
	db SNORLAX     ; Sanae $84
	db MOLTRES     ; Kanako $49
	db DRAGONITE     ; Suwako $42
	db $FF
MonListA:
	db BULBASAUR     ; Hakurei $99
	db IVYSAUR     ; Kirisame $09
	db VENUSAUR     ; Genji $9A
	db CHARIZARD     ; EReimu $B4
	db BLASTOISE     ; EMarisa $1C
	db BUTTERFREE     ; ERumia $7D
	db BEEDRILL     ; EDaiyousei $72
	db PIDGEOT     ; ECirno $97
	db SPEAROW     ; EStar $05
	db ARBOK     ; ELuna $2D
	db SANDSHREW     ; ESunny $60
	db NIDORINA     ; EMeiling $A8
	db NIDORINO     ; EKoakuma $A7
	db CLEFABLE     ; EPatchouli $8E
	db JIGGLYPUFF     ; ESakuya $64
	db GOLBAT     ; ERemilia $82
	db VILEPLUME     ; EFlandre $BB
	db VENOMOTH     ; ELetty $77
	db MEOWTH     ; EChen $4D
	db GOLDUCK     ; EAlice $80
	db PRIMEAPE     ; ELilyWhite $75
	db ARCANINE     ; ELilyBlack $14
	db POLIWRATH     ; ELunasa $6F
	db ALAKAZAM     ; EMerlin $95
	db MACHAMP     ; ELyrica $7E
	db TENTACOOL     ; EYoumu $18
	db GRAVELER     ; EYuyuko $27
	db RAPIDASH     ; ERan $A4
	db MAGNEMITE     ; EYukari $AD
	db DODUO     ; ESuika $46
	db DEWGONG     ; EWriggle $78
	db SHELLDER     ; EMystia $17
	db HAUNTER     ; EKeine $93
	db GENGAR     ; HKeine $0E
	db HYPNO     ; ETewi $81
	db VOLTORB     ; EReisen $06
	db EXEGGUTOR     ; EEirin $0A
	db HITMONLEE     ; EKaguya $2B
	db KOFFING     ; EMokou $37
	db TANGELA     ; EMedicine $1E
	db SEADRA     ; EAya $5D
	db STARYU     ; EYuuka $1B
	db SCYTHER     ; EKomachi $1A
	db MAGMAR     ; EEiki $33
	db MAGIKARP     ; EShizuha $85
	db DITTO     ; EMinoriko $4C
	db JOLTEON     ; EHina $68
	db OMANYTE     ; ENitori $62
	db KABUTOPS     ; EMomiji $5B
	db ARTICUNO     ; ESanae $4A
	db DRATINI     ; EKanako $58
	db MEWTWO     ; ESuwako $83
	db $FF
	
