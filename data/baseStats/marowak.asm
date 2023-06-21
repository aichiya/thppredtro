db DEX_MAROWAK ; pokedex id
db 155 ; base hp
db 45 ; base attack
db 25 ; base defense
db 45 ; base speed
db 75 ; base special
db GRASS ; species type 1
db PSYCHIC ; species type 2
db 145 ; catch rate
db 140 ; base exp yield
INCBIN MAROWAK_FR,0,1 ; 55, sprite dimensions
dw MarowakPicFront
dw MarowakPicBack
; attacks known at lvl 0
db CONFUSION
db RAZOR_LEAF
db LEECH_LIFE
db RECOVER
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
	db BANK(MarowakPicFront)
	assert BANK(MarowakPicFront) == BANK(MarowakPicBack)
