db DEX_RAPIDASH ; pokedex id
db 90 ; base hp
db 100 ; base attack
db 75 ; base defense
db 100 ; base speed
db 100 ; base special
db GROUND ; species type 1
db PSYCHIC ; species type 2
db 45 ; catch rate
db 215 ; base exp yield
INCBIN RAPIDASH_FR,0,1 ; 55, sprite dimensions
dw RapidashPicFront
dw RapidashPicBack
; attacks known at lvl 0
db CONFUSE_RAY
db DIG
db BODY_SLAM
db SLASH
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
	db BANK(RapidashPicFront)
	assert BANK(RapidashPicFront) == BANK(RapidashPicBack)
