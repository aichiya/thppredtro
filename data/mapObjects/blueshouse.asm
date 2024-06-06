BluesHouseObject:
	db $a ; border block

	db 2 ; warps
	warp 2, 7, 1, -1
	warp 3, 7, 1, -1

	db 0 ; signs

	;joenote - added an object for toggling the "shimmer" feature
	db 4 ; objects
	object SPRITE_DAISY, 2, 3, STAY, RIGHT, 1 ; Daisy, sitting by map
	object SPRITE_DAISY, 6, 4, WALK, 1, 2, 0 ; Daisy, walking around
	object SPRITE_BOOK_MAP_DEX, 3, 3, STAY, NONE, 3, 0 ; map on table
	object SPRITE_BALL, 6, 1, STAY, NONE, 4, 0 ; pokeball in corner for toggling

	; warp-to
	warp_to 2, 7, BLUES_HOUSE_WIDTH
	warp_to 3, 7, BLUES_HOUSE_WIDTH
