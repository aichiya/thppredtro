db DEX_EXEGGUTOR ; pokedex id
db 150 ; base hp
db 95 ; base attack
db 50 ; base defense
db 70 ; base speed
db 95 ; base special
db WATER ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 215 ; base exp yield
INCBIN EXEGGUTOR_FR,0,1 ; 55, sprite dimensions
dw ExeggutorPicFront
dw ExeggutorPicBack
; attacks known at lvl 0
db STUN_SPORE
db BUBBLEBEAM
db RECOVER
db SLEEP_POWDER
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
	db BANK(ExeggutorPicFront)
	assert BANK(ExeggutorPicFront) == BANK(ExeggutorPicBack)
