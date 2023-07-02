_OakSpeechText1::
	text "Hello there!"
	line "Welcome to the"
	cont "Touhou Simulation!"

	para "My name is Oak!"
	line "People call me"
	cont "the Prof!"
	prompt

_OakSpeechText2A::
	text "This world is"
	line "occupied by"
	cont "PUPPET FRAGMENTS"
	cont "from Gensokyo!@@"

_OakSpeechText2B::
	text $51,"For some people,"
	line "these <pkmn> are"
	cont "pets. Others use"
	cont "them for fights."

	para "Myself..."

	para "I study <pkmn>"
	line "as a profession."
	prompt

_IntroducePlayerText::
	text "First, what is"
	line "your name?"
	prompt

_IntroduceRivalText::
	text "This is my grand-"
	line "son. He's been"
	cont "your rival since"
	cont "you were a baby."

	para "...Erm, what is"
	line "his name again?"
	prompt

_OakSpeechText3::
	text "<PLAYER>!"

	para "Your very own"
	line "legend is"
	cont "about to unfold!"

	para "A world of dreams"
	line "and adventures"
	cont "with Touhou <pkmn>"
	cont "await! Let's go!"
	done

;joenote - ask if female trainer
IF DEF(_FPLAYER)
_AskIfGirlText::
	text "Play as Renko?"
	done
ENDC
