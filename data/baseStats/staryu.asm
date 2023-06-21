db DEX_STARYU ; pokedex id
db 120 ; base hp
db 115 ; base attack
db 70 ; base defense
db 30 ; base speed
db 120 ; base special
db GRASS ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 215 ; base exp yield
INCBIN STARYU_FR,0,1 ; 55, sprite dimensions
dw StaryuPicFront
dw StaryuPicBack
; attacks known at lvl 0
db LEECH_SEED
db STOMP
db RAZOR_LEAF
db HYPER_BEAM
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
	db BANK(StaryuPicFront)
	assert BANK(StaryuPicFront) == BANK(StaryuPicBack)
