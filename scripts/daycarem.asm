DayCareMScript:
	jp EnableAutoTextBoxDrawing

DayCareMTextPointers:
	dw DayCareMText1

DayCareMText1:
	TX_ASM
	call SaveScreenTilesToBuffer2
	ld a, [wDayCareInUse]
	and a
	jp nz, .daycareInUse
	ld hl, DayCareIntroText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, DayCareComeAgainText
	jp nz, .done
	ld a, [wPartyCount]
	dec a
	ld hl, DayCareOnlyHaveOneMonText
	jp z, .done
	ld hl, DayCareWhichMonText
	call PrintText
	xor a
	ld [wUpdateSpritesEnabled], a
	ld [wPartyMenuTypeOrMessageID], a
	ld [wMenuItemToSwap], a
	call DisplayPartyMenu
	push af
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	call LoadGBPal
	pop af
	ld hl, DayCareAllRightThenText
	jp c, .done
;joenote - HM moves are not needed to travel between the daycare and the Cerulean Pokemon Center,
;			so disallowing HM moves does nothing to prevent a softlock here.
;			This can be commented out safely.
;	callab KnowsHMMove
;	ld hl, DayCareCantAcceptMonWithHMText
;	jp c, .done
	xor a
	ld [wPartyAndBillsPCSavedMenuItem], a
	ld a, [wWhichPokemon]
	ld hl, wPartyMonNicks
	call GetPartyMonName
	ld hl, DayCareWillLookAfterMonText
	call PrintText
	ld a, 1
	ld [wDayCareInUse], a
	ld a, PARTY_TO_DAYCARE
	ld [wMoveMonType], a
	call MoveMon
	xor a
	ld [wRemoveMonFromBox], a
	call RemovePokemon
	ld a, [wcf91]
	call PlayCry
	ld hl, DayCareComeSeeMeInAWhileText
	jp .done

.daycareInUse
	xor a
	ld hl, wDayCareMonName
	call GetPartyMonName
	ld a, DAYCARE_DATA
	ld [wMonDataLocation], a
	call LoadMonData
	callab CalcLevelFromExperience
	ld a, d
	cp MAX_LEVEL
	jr c, .skipCalcExp

	ld d, MAX_LEVEL
	callab CalcExperience
	ld hl, wDayCareMonExp
	ld a, [hExperience]
	ld [hli], a
	ld a, [hExperience + 1]
	ld [hli], a
	ld a, [hExperience + 2]
	ld [hl], a
	ld d, MAX_LEVEL

.skipCalcExp
	xor a
	ld [wDayCareNumLevelsGrown], a
	ld hl, wDayCareMonBoxLevel
	ld a, [hl]
	ld [wDayCareStartLevel], a
	cp d
	ld [hl], d
	ld hl, DayCareMonNeedsMoreTimeText
	jr z, .next
	ld a, [wDayCareStartLevel]
	ld b, a
	ld a, d
	sub b
	ld [wDayCareNumLevelsGrown], a
	ld hl, DayCareMonHasGrownText

.next
	call PrintText
	ld a, [wPartyCount]
	cp PARTY_LENGTH
	ld hl, DayCareNoRoomForMonText
	jp z, .leaveMonInDayCare
	ld de, wDayCareTotalCost
	xor a
	ld [de], a
	inc de
	ld [de], a
	ld hl, wDayCarePerLevelCost
	ld a, $1		;loading $0100 into wDayCarePerLevelCost & wDayCarePerLevelCost+1 for 100 money
	ld [hli], a
	ld [hl], $0
	ld a, [wDayCareNumLevelsGrown]
	inc a
	ld b, a
	ld c, 2
.calcPriceLoop
	push hl
	push de
	push bc
	predef AddBCDPredef
	pop bc
	pop de
	pop hl
	dec b
	jr nz, .calcPriceLoop
	ld hl, DayCareOweMoneyText
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld hl, DayCareAllRightThenText
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .leaveMonInDayCare
	ld hl, wDayCareTotalCost
	ld [hMoney], a
	ld a, [hli]
	ld [hMoney + 1], a
	ld a, [hl]
	ld [hMoney + 2], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, DayCareNotEnoughMoneyText
	jp .leaveMonInDayCare

.enoughMoney
	xor a
	ld [wDayCareInUse], a
	ld hl, wDayCareNumLevelsGrown
	ld [hli], a
	inc hl
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, SFX_PURCHASE
	call PlaySoundWaitForCurrent
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ld hl, DayCareHeresYourMonText
	call PrintText
	ld a, DAYCARE_TO_PARTY
	ld [wMoveMonType], a
	call MoveMon
	ld a, [wDayCareMonSpecies]
	ld [wcf91], a
	ld a, [wPartyCount]
	dec a
	push af
	ld bc, wPartyMon2 - wPartyMon1
	push bc
	ld hl, wPartyMon1Moves
	call AddNTimes
	ld d, h
	ld e, l
;	ld a, 1			;joenote - not going to be used anymore
;	ld [wLearningMovesFromDayCare], a
;	predef WriteMonMoves
	pop bc
	pop af

	ld [wWhichPokemon], a	;joenote - update wWhichPokemon
	push af	;back up wWhichPokemon for the end
	
	ld a, [wcf91]
	call PlayCry
	
;joenote - prompt move learning and evolution if possible
	ld a, [wDayCareMonSpecies]
	ld [wd11e], a
	call DaycareMoveLearning
	call DaycareEvolution	;returns with z flag set if evolution did not happen
	jr z, .doneEvos
	ld a, [wEvolutionOccurred]
	cp 2
	jr z, .doneEvos
	
	;if an evolution completed, check if another one needs to happen
	ld a, [wWhichPokemon]
	dec a	;wWhichPokemon is +1 too many from DaycareEvolution routines, so decrement
	ld [wWhichPokemon], a
	ld hl, wPartyMon1Species
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes
	ld a, [hl]
	ld [wd11e], a	;update the species to the new evolution
	call DaycareEvolution	;See if a 2nd evolution is needed

.doneEvos
	ld a, 0
	ld [wEvolutionOccurred], a
	
	pop af	;get back wWhichPokemon

	; set mon's HP to max
	ld bc, wPartyMon2HP - wPartyMon1HP
	ld hl, wPartyMon1HP
	call AddNTimes
	ld d, h
	ld e, l
	ld bc, wPartyMon1MaxHP - wPartyMon1HP
	add hl, bc
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a

	ld hl, DayCareGotMonBackText
	jr .done

.leaveMonInDayCare
	ld a, [wDayCareStartLevel]
	ld [wDayCareMonBoxLevel], a

.done
	call PrintText
	jp TextScriptEnd


DaycareEvolution:
;sets z flag if no evolution happened
;clears z flag if evolution happened
	xor a 
	ld [wMonDataLocation], a	; PLAYER_PARTY_DATA
	ld [wForceEvolution], a

	ld a, [wLetterPrintingDelayFlags]
	push af
	xor a
	ld [wLetterPrintingDelayFlags], a

	;Evolution will be done as if it was happening after a battle.
	;So wStartBattleLevels needs to be updated or else the move learning will be wonky.
	ld hl, wStartBattleLevels
	ld a, [wWhichPokemon]
	push bc
	ld c, a
	ld b, 0
	add hl, bc
	pop bc
	ld a, [wDayCareStartLevel]
	ld [hl], a
	
	;make it so evolution is treated as if it were happening at the end of a battle
	ld hl, wFlags_D733
	set 6, [hl]
	push hl

	callab TryEvolvingMon

	pop hl
	res 6, [hl]
	
	pop af
	ld [wLetterPrintingDelayFlags], a

	ld a, [wEvolutionOccurred]	;check to see if any evolution started (even if cancelled with the B button)
	and a
	jr z, .no_evolve
	call WaitForSoundToFinish
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	call LoadGBPal
	ld a, 1
	and a
.no_evolve
	ret

DaycareMoveLearning:
	xor a 
	ld [wMonDataLocation], a	; PLAYER_PARTY_DATA
	ld [wForceEvolution], a

	ld a, [wLetterPrintingDelayFlags]
	push af
	xor a
	ld [wLetterPrintingDelayFlags], a
	
	push bc
	ld a, [wCurEnemyLVL]	; load the final level into a.
	ld c, a	; load the final level to over to c
	ld a, [wDayCareStartLevel]	; load the original level into a
	ld b, a	; load the original level over to b
	dec b
.inc_level	; marker for looping back 
	inc b	;increment the current level
	ld a, b	;put the current level in a
	ld [wCurEnemyLVL], a	;and set the final level to the current level in the loop
	push bc	;save b & c on the stack as they hold the currently tracked loop level a true final level
	predef LearnMoveFromLevelUp
	pop bc	;get the current loop level and final level values back from the stack
	ld a, b	;load the current loop level into a
	cp c	;compare it with the final level
	jr c, .inc_level	;loop back again if final level has not been reached
	pop bc
	
	pop af
	ld [wLetterPrintingDelayFlags], a
	ret

	
	
DayCareIntroText:
	TX_FAR _DayCareIntroText
	db "@"

DayCareWhichMonText:
	TX_FAR _DayCareWhichMonText
	db "@"

DayCareWillLookAfterMonText:
	TX_FAR _DayCareWillLookAfterMonText
	db "@"

DayCareComeSeeMeInAWhileText:
	TX_FAR _DayCareComeSeeMeInAWhileText
	db "@"

DayCareMonHasGrownText:
	TX_FAR _DayCareMonHasGrownText
	db "@"

DayCareOweMoneyText:
	TX_FAR _DayCareOweMoneyText
	db "@"

DayCareGotMonBackText:
	TX_FAR _DayCareGotMonBackText
	db "@"

DayCareMonNeedsMoreTimeText:
	TX_FAR _DayCareMonNeedsMoreTimeText
	db "@"

DayCareAllRightThenText:
	TX_FAR _DayCareAllRightThenText
DayCareComeAgainText:
	TX_FAR _DayCareComeAgainText
	db "@"

DayCareNoRoomForMonText:
	TX_FAR _DayCareNoRoomForMonText
	db "@"

DayCareOnlyHaveOneMonText:
	TX_FAR _DayCareOnlyHaveOneMonText
	db "@"

DayCareCantAcceptMonWithHMText:
	TX_FAR _DayCareCantAcceptMonWithHMText
	db "@"

DayCareHeresYourMonText:
	TX_FAR _DayCareHeresYourMonText
	db "@"

DayCareNotEnoughMoneyText:
	TX_FAR _DayCareNotEnoughMoneyText
	db "@"
