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
.callRand	;do not allow a seed value of zero
	call Random	
	and a
	jr z, .callRand
	ld [wRandomizerSeed], a
.no_update
	ld [wUnusedD722], a
	
	CheckEvent EVENT_8D7
	jr z, .tieredRandom
	ld hl, MonListTrueRandom
	CheckEvent EVENT_GOT_STARTER
	jr nz, .notstarter_trueRandom
	ld hl, MonListTrueRandom_Starter
.notstarter_trueRandom
	ld a, [wcf91]
	ld de, $0001
	push hl
	call IsInArray
	pop hl
	jr c, .listfound

.tieredRandom
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
	
	;enable the sram and control sram bank 0
	ld a, SRAM_ENABLE
	ld [MBC1SRamEnable], a
	xor a
	ld [MBC1SRamBank], a
	
;use sprite buffer 0 in the sram	
	ld hl, sSpriteBuffer0
.loop2
	ld a, [de]
	cp $FF
	jr z, .next2
	ld [hli], a
	inc de
	jr .loop2 
.next2
	
	;the mon list is now loaded into sSpriteBuffer0 ($A000)
	
;Here we are going to do a twist on Durstenfeld's in-place version of the Fisher–Yates shuffle
;We have a mon value in wcf91.
;We want to swap this out with a randomized mon using a random seed. 
;But we also want this to be deterministically replicable so that the playthrough stays consistent.
;Here's how this is going to work. 
;The list of all mons to be randomized with each other is copied into sram at address A000.
;HL and DE will be used as pointers to this list.
;C holds the size of this list.
;[wUnusedD722 + 1] holds the offset within that list at which our mon in question is located.
;wUnusedD722 is the working address for a random number between 1 and 255.
	
	ld hl, sSpriteBuffer0
.loop3
;DE will point to the "origin position" of the list (not necessarily the begining depending on where we are in the loop)	
	ld d, h
	ld e, l

;If C=1, then there is nothing left to randomize.
	dec c
	jr z, .next3
	inc c

;Now to update the random number with some deterministic variation. There's multiple ways to do this.
;One way is to do a basic [1,1,3] Marsaglia XOR Shift.
;Note that this never produces a zero.
	ld a, [wUnusedD722]
	ld b, a
	sla a
	xor b
	ld b, a
	srl a
	xor b
	ld b, a
	sla a
	sla a
	sla a
	xor b
	ld [wUnusedD722], a
;A is now a random number from 1 to 255.

;The plan is to use the value of A as an offset for pointing to a later section of the mon list.
;If A < C, then there is no problem because there is no risk of blowing past the end of the mon list.
;But it is a problem if A >= C.
;So to adjust for this, subtract C-1 from A until A underflows, then add C-1 back to it one time.
;This should make the value of A from 0 to C-2
	dec c
.loop_remainder
	sub c
	jr nc, .loop_remainder
	add c
	inc c
;This essentially treats the mon list as a "wheel of fortune" wheel with C-1 number of equal-sized wedges.
;And A is how much the wheel has been spun from its starting position.
;Note that if A is zero, it means that the wheel spun right back around to the position it started at.

;Now increment A.
;This will make the value of A from 1 to C-1
;This makes it so that mons are not swapped with themselves and every mon should be different.
	inc a

;HL is going to point 'A' positions further in the list to the "destination position"
	add l
	ld l, a
;Note that you can straight add to L like this because the mon list starts at $A000. No risk of L overflowing.
	
;Now take the mon from the destination position and swap it with the mon at the origin position
	ld a, [hl]
	ld b, a
	ld a, [de]
	ld [hl], a
	ld a, b
	ld [de], a
	
;consequently, if our mon's offset position in the list is equal to the origin position, then we can stop looping.
	ld a, [wUnusedD722 + 1]
	cp e
	jr z, .next3
	
;Otherwise, reset HL to the origin position.
	ld h, d
	ld l, e
	
;Now increment the origin position and decrement the size of the mon list. 
;This is effectively the same as removing a "wedge" from the mon list "wheel"
	inc hl
	dec c
;Now spin again.
	jr .loop3

.next3
;The mon in wcf91 has now been swapped out for a different one at the origin position of the list.
;Load the new one into wcf91 and also wEnemyMonSpecies2 for good measure.
	ld a, [de]
	ld [wcf91], a
	ld [wEnemyMonSpecies2], a

	xor a
	ld [MBC1SRamEnable], a	;disable the sram
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
; TO DO NEW THING	
MonListTrueRandom:
	db METAPOD      ; $7C
	db KAKUNA       ; $71
	db PIDGEOTTO    ; $96
	db JIGGLYPUFF   ; $64
	db ABRA         ; $94
	db MAGIKARP     ; $85
	db RATICATE     ; $A6
	db FEAROW       ; $23
	db ARBOK        ; $2D
	db RAICHU       ; $55
	db SANDSLASH    ; $61
	db NIDORINA     ; $A8
	db NIDORINO     ; $A7
	db WIGGLYTUFF   ; $65
	db GOLBAT       ; $82
	db GLOOM        ; $BA
	db PARASECT     ; $2E
	db VENOMOTH     ; $77
	db DUGTRIO      ; $76
	db GOLDUCK      ; $80
	db POLIWHIRL    ; $6E
	db KADABRA      ; $26
	db MACHOKE      ; $29
	db WEEPINBELL   ; $BD
	db TENTACRUEL   ; $9B
	db GRAVELER     ; $27
	db SLOWBRO      ; $08
	db MAGNETON     ; $36
	db DODRIO       ; $74
	db DEWGONG      ; $78
	db MUK          ; $88
	db HAUNTER      ; $93
	db HYPNO        ; $81
	db KINGLER      ; $8A
	db ELECTRODE    ; $8D
	db MAROWAK      ; $91
	db WEEZING      ; $8F
	db RHYDON       ; $01
	db SEADRA       ; $5D
	db SEAKING      ; $9E
	;fall through
MonListTrueRandom_Starter:	;because not all mons should be allowed as starter pokemon
	db BULBASAUR    ; $99
	db CHARMANDER   ; $B0
	db SQUIRTLE     ; $B1
	db CATERPIE     ; $7B
	db WEEDLE       ; $70
	db PIDGEY       ; $24
	db RATTATA      ; $A5
	db SPEAROW      ; $05
	db EKANS        ; $6C
	db PIKACHU      ; $54
	db SANDSHREW    ; $60
	db NIDORAN_F    ; $0F
	db NIDORAN_M    ; $03
	db CLEFAIRY     ; $04
	db VULPIX       ; $52
	db ZUBAT        ; $6B
	db ODDISH       ; $B9
	db PARAS        ; $6D
	db VENONAT      ; $41
	db DIGLETT      ; $3B
	db MEOWTH       ; $4D
	db PSYDUCK      ; $2F
	db MANKEY       ; $39
	db GROWLITHE    ; $21
	db POLIWAG      ; $47
	db MACHOP       ; $6A
	db BELLSPROUT   ; $BC
	db TENTACOOL    ; $18
	db GEODUDE      ; $A9
	db PONYTA       ; $A3
	db SLOWPOKE     ; $25
	db MAGNEMITE    ; $AD
	db FARFETCHD    ; $40
	db DODUO        ; $46
	db SEEL         ; $3A
	db GRIMER       ; $0D
	db SHELLDER     ; $17
	db GASTLY       ; $19
	db ONIX         ; $22
	db DROWZEE      ; $30
	db KRABBY       ; $4E
	db VOLTORB      ; $06
	db EXEGGCUTE    ; $0C
	db CUBONE       ; $11
	db HITMONLEE    ; $2B
	db HITMONCHAN   ; $2C
	db LICKITUNG    ; $0B
	db KOFFING      ; $37
	db RHYHORN      ; $12
	db CHANSEY      ; $28
	db TANGELA      ; $1E
	db KANGASKHAN   ; $02
	db HORSEA       ; $5C
	db GOLDEEN      ; $9D
	db STARYU       ; $1B
	db MR_MIME      ; $2A
	db SCYTHER      ; $1A
	db JYNX         ; $48
	db ELECTABUZZ   ; $35
	db MAGMAR       ; $33
	db PINSIR       ; $1D
	db TAUROS       ; $3C
	db LAPRAS       ; $13
	db DITTO        ; $4C
	db EEVEE        ; $66
	db PORYGON      ; $AA
	db SNORLAX      ; $84
	db DRATINI      ; $58
	db $FF
