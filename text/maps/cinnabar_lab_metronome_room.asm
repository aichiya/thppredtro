_TM35PreReceiveText::
	text "Tch-tch-tch!"
	line "I made a cool TM!"

	para "It can cause all"
	line "kinds of fun!"
	prompt

_ReceivedTM35Text::
	text "<PLAYER> received "
	line "@"
	TX_RAM wcf4b
	text "!@@"

_TM35ExplanationText::
	text "Tch-tch-tch!"
	line "That's the sound"
	cont "of a Metronome!"

	para "It tweaks your"
	line "<pkmn>'s brain"
	cont "into using moves"
	cont "it doesn't know!"
	done

_TM35NoRoomText::
	text "Your pack is"
	line "crammed full!"
	done

_Lab3Text2::
	text "Fairy can evolve"
	line "into 1 of 3 kinds"
	cont "of <pkmn>."
	done

_Lab3Text3::
	text "There's an e-mail"
	line "message!"

	para "..."

;	para "The 3 legendary"
;	line "bird #MON are"
;	cont "ARTICUNO, ZAPDOS"
;	cont "and MOLTRES."

;	para "Their whereabouts"
;	line "are unknown."

	para "We plan to explore"
	line "the cavern close"
	cont "to Cerulean."

	para "From: <pkmn>"
	line "Research Team"

	para "..."
	done

_Lab3Text5::
	text "An amber pipe!"
	done
