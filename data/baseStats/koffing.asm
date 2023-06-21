db DEX_KOFFING ; pokedex id
db 130 ; base hp
db 100 ; base attack
db 75 ; base defense
db 75 ; base speed
db 120 ; base special
db FIRE ; species type 1
db FIGHTING ; species type 2
db 45 ; catch rate
db 220 ; base exp yield
INCBIN KOFFING_FR,0,1 ; 55, sprite dimensions
dw KoffingPicFront
dw KoffingPicBack
; attacks known at lvl 0
db ROLLING_KICK
db RECOVER
db LEER
db EMBER
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
	db BANK(KoffingPicFront)
	assert BANK(KoffingPicFront) == BANK(KoffingPicBack)
