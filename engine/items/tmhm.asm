; checks if the mon in [wWhichPokemon] already knows the move in [wMoveNum]
; sets the carry flag if the move is already known, and clears it if the move is not known
;joenote - separated out the search from the text printing to make this more versatile
CheckIfMoveIsKnown:
	call _CheckIfMoveIsKnown
	ret nc
	ld hl, AlreadyKnowsText
	call PrintText
	scf
	ret
	
_CheckIfMoveIsKnown:
	ld a, [wWhichPokemon]
	ld hl, wPartyMon1Moves
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes
	ld a, [wMoveNum]
	ld b, a
	ld c, NUM_MOVES
.loop
	ld a, [hli]
	cp b
	jr z, .alreadyKnown ; found a match
	dec c
	jr nz, .loop
	and a
	ret
.alreadyKnown
	scf
	ret

AlreadyKnowsText:
	TX_FAR _AlreadyKnowsText
	db "@"
