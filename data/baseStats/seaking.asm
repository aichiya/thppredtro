db DEX_SEAKING ; pokedex id
db 95 ; base hp
db 90 ; base attack
db 55 ; base defense
db 10 ; base speed
db 95 ; base special
db GRASS ; species type 1
db FIRE ; species type 2
db 145 ; catch rate
db 150 ; base exp yield
INCBIN SEAKING_FR,0,1 ; 55, sprite dimensions
dw SeakingPicFront
dw SeakingPicBack
; attacks known at lvl 0
db VINE_WHIP
db LEECH_SEED
db LEER
db STOMP
db 3 ; growth rate
; learnset
	tmlearn 1,2,3,4,5,6,7,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 17,18,19,20,21,22,23,24
	tmlearn 25,26,27,28,29,30,31,32
	tmlearn 33,34,35,36,37,38,39,40
	tmlearn 41,42,43,44,45,46,47,48
	tmlearn 49,50,51,52,53,54,55,56
;	db 0 ; padding
	db BANK(SeakingPicFront)
	assert BANK(SeakingPicFront) == BANK(SeakingPicBack)
