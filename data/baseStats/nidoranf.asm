db DEX_NIDORAN_F ; pokedex id
db 90 ; base hp
db 90 ; base attack
db 90 ; base defense
db 80 ; base speed
db 20 ; base special
db FIGHTING ; species type 1
db FIGHTING ; species type 2
db 145 ; catch rate
db 135 ; base exp yield
INCBIN NIDORAN_F_FR,0,1 ; 55, sprite dimensions
dw NidoranFPicFront
dw NidoranFPicBack
; attacks known at lvl 0
db KARATE_CHOP
db ROLLING_KICK
db FOCUS_ENERGY
db LOW_KICK
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
	db BANK(NidoranFPicFront)
	assert BANK(NidoranFPicFront) == BANK(NidoranFPicBack)
