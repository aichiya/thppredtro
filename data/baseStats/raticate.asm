db DEX_RATICATE ; pokedex id
db 45 ; base hp
db 45 ; base attack
db 75 ; base defense
db 55 ; base speed
db 85 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 145 ; base exp yield
INCBIN RATICATE_FR,0,1 ; 55, sprite dimensions
dw RaticatePicFront
dw RaticatePicBack
; attacks known at lvl 0
db GROWL
db BUBBLE
db POUND
db WATER_GUN
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
	db BANK(RaticatePicFront)
	assert BANK(RaticatePicFront) == BANK(RaticatePicBack)
