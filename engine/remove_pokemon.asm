_RemovePokemon:
	call ClearTempFieldMove	;joenote - for field move slot

	ld hl, wPartyCount
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .asm_7b74
	ld hl, wNumInBox
.asm_7b74
	ld a, [hl]
	dec a
	ld [hli], a
	ld a, [wWhichPokemon]
	ld c, a
	ld b, $0
	add hl, bc
	ld e, l
	ld d, h
	inc de
	;hl points to species of removing 'mon
	;de points to species of next 'mon in line
.asm_7b81
	ld a, [de]
	inc de
	ld [hli], a
	inc a
	jr nz, .asm_7b81
	ld hl, wPartyMonOT
	ld d, $5
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .asm_7b97
	ld hl, wBoxMonOT
	ld d, $13
.asm_7b97
	ld a, [wWhichPokemon]
	call SkipFixedLengthTextEntries
	ld a, [wWhichPokemon]
	cp d
	jr nz, .asm_7ba6
	ld [hl], $ff
	ret
.asm_7ba6
	ld d, h
	ld e, l
	ld bc, NAME_LENGTH
	add hl, bc
	ld bc, wPartyMonNicks
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .asm_7bb8
	ld bc, wBoxMonNicks
.asm_7bb8
	call CopyDataUntil
	ld hl, wPartyMons
	ld bc, wPartyMon2 - wPartyMon1
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .asm_7bcd
	ld hl, wBoxMons
	ld bc, wBoxMon2 - wBoxMon1
.asm_7bcd
	ld a, [wWhichPokemon]
	call AddNTimes
	ld d, h
	ld e, l
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .asm_7be4
	ld bc, wBoxMon2 - wBoxMon1
	add hl, bc
	ld bc, wBoxMonOT
	jr .asm_7beb
.asm_7be4
	ld bc, wPartyMon2 - wPartyMon1
	add hl, bc
	ld bc, wPartyMonOT
.asm_7beb
	call CopyDataUntil
	ld hl, wPartyMonNicks
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .asm_7bfa
	ld hl, wBoxMonNicks
.asm_7bfa
	ld bc, NAME_LENGTH
	ld a, [wWhichPokemon]
	call AddNTimes
	ld d, h
	ld e, l
	ld bc, NAME_LENGTH
	add hl, bc
	ld bc, wPokedexOwned
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .asm_7c15
	ld bc, wBoxMonNicksEnd
.asm_7c15
	jp CopyDataUntil

ClearTempFieldMove:	;joenote - for field move slot
	ld a, [wRemoveMonFromBox]
	and a
	ret nz 

	push hl
	push bc
	push de
	
	ld a, [wWhichPokemon]
	ld c, a
	ld b,0
	ld hl, wTempFieldMoveSLots
	add hl, bc
	ld d, h
	ld e, l
	inc de
	;hl points to slot of removing 'mon
	;de points to slot of next 'mon in line
.loop
	xor a
	ld [hl], a
	
	inc c
	ld a, c
	cp PARTY_LENGTH
	jr nc, .done
	
	ld a, [de]
	inc de
	ld [hli], a
	jr .loop
.done
	pop de
	pop bc
	pop hl
	ret
