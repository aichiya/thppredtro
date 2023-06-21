db DEX_PIDGEOT ; pokedex id
db 85 ; base hp
db 70 ; base attack
db 80 ; base defense
db 95 ; base speed
db 120 ; base special
db ICE ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 190 ; base exp yield
INCBIN PIDGEOT_FR,0,1 ; 55, sprite dimensions
dw PidgeotPicFront
dw PidgeotPicBack
; attacks known at lvl 0
db FOCUS_ENERGY
db ICE_PUNCH
db DEFENSE_CURL
db DOUBLE_EDGE
db 0 ; growth rate
; learnset
	tmlearn 1,2,3,4,5,6,7,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 17,18,19,20,21,22,23,24
	tmlearn 25,26,27,28,29,30,31,32
	tmlearn 33,34,35,36,37,38,39,40
	tmlearn 41,42,43,44,45,46,47,48
	tmlearn 49,50,51,52,53,54,55,56
;	db 0 ; padding
	db BANK(PidgeotPicFront)
	assert BANK(PidgeotPicFront) == BANK(PidgeotPicBack)
