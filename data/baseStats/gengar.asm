db DEX_GENGAR ; pokedex id
db 70 ; base hp
db 110 ; base attack
db 100 ; base defense
db 85 ; base speed
db 85 ; base special
db FIGHTING ; species type 1
db FIGHTING ; species type 2
db 45 ; catch rate
db 195 ; base exp yield
INCBIN GENGAR_FR,0,1 ; 55, sprite dimensions
dw GengarPicFront
dw GengarPicBack
; attacks known at lvl 0
db SHARPEN
db DOUBLESLAP
db HARDEN
db HEADBUTT
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
	db BANK(GengarPicFront)
	assert BANK(GengarPicFront) == BANK(GengarPicBack)
