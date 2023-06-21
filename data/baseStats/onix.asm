db DEX_ONIX ; pokedex id
db 70 ; base hp
db 40 ; base attack
db 40 ; base defense
db 70 ; base speed
db 40 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 245 ; catch rate
db 90 ; base exp yield
INCBIN ONIX_FR,0,1 ; 55, sprite dimensions
dw OnixPicFront
dw OnixPicBack
; attacks known at lvl 0
db POUND
db TAIL_WHIP
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,2,3,4,5,6,7,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 17,18,19,20,21,22,23,24
	tmlearn 25,26,27,28,29,30,31,32
	tmlearn 33,34,35,36,37,38,39,40
	tmlearn 41,42,43,44,45,46,47,48
	tmlearn 49,50,51,52,53,54,55,56
;	db 0 ; padding
	db BANK(OnixPicFront)
	assert BANK(OnixPicFront) == BANK(OnixPicBack)
