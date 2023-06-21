db DEX_SLOWPOKE ; pokedex id
db 50 ; base hp
db 60 ; base attack
db 70 ; base defense
db 20 ; base speed
db 70 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 245 ; catch rate
db 95 ; base exp yield
INCBIN SLOWPOKE_FR,0,1 ; 55, sprite dimensions
dw SlowpokePicFront
dw SlowpokePicBack
; attacks known at lvl 0
db CONFUSE_RAY
db TELEPORT
db 0
db 0
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
	db BANK(SlowpokePicFront)
	assert BANK(SlowpokePicFront) == BANK(SlowpokePicBack)
