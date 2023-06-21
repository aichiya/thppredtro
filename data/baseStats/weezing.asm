db DEX_WEEZING ; pokedex id
db 100 ; base hp
db 65 ; base attack
db 65 ; base defense
db 110 ; base speed
db 130 ; base special
db FIGHTING ; species type 1
db PSYCHIC ; species type 2
db 15 ; catch rate
db 200 ; base exp yield
INCBIN WEEZING_FR,0,1 ; 55, sprite dimensions
dw WeezingPicFront
dw WeezingPicBack
; attacks known at lvl 0
db PSYCHIC_M
db SLASH
db SUBMISSION
db RECOVER
db 5 ; growth rate
; learnset
	tmlearn 1,2,3,4,5,6,7,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 17,18,19,20,21,22,23,24
	tmlearn 25,26,27,28,29,30,31,32
	tmlearn 33,34,35,36,37,38,39,40
	tmlearn 41,42,43,44,45,46,47,48
	tmlearn 49,50,51,52,53,54,55,56
;	db 0 ; padding
	db BANK(WeezingPicFront)
	assert BANK(WeezingPicFront) == BANK(WeezingPicBack)
