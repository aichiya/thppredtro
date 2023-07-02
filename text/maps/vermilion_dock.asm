_VermilionDockText1::
	text ""
	done

_VermilionDockSeigaIntro::
	text "My name is Seiga."
	line "Though my friends"
IF (DEF(_GREEN) || DEF(_REDJP) || DEF(_BLUEJP))
	cont "call me BLUE."
ELSE
	cont "call me GREEN."
ENDC
	
	para "I'm champ of the"
	line "Orange Islands"
	cont "Touhou League."

	para "I'm currently on a"
	line "victory vacation"
	cont "on the S.S.Anne."
	
	para "Oh...This truck?"
	line "I think it's just"
	cont "a silly in-joke."
	done

_VermilionDockSeigaChallenge::
	text "You know, I heard"
	line "about you on the"
	cont "radio. Congrats!"
	
	para "How about a"
	line "friendly battle"
	cont "between champs?"
	
	para "If you win, I'll"
	line "tell you a secret"
	cont "about this truck."
	done

_VermilionDockSeigaBye::
	text "Nice seeing you."
	line "Come by and visit"
	cont "me again."
	done
	
_VermilionDockSeigaPre::
	text "Here I come!"
	done
	
_VermilionDockSeigaDefeat::
	text "Nice battle!"
	line "But better luck"
	cont "next time."
	prompt

_VermilionDockSeigaVictory::
	text "I think a"
	line "<pkmn> was well-"
	cont "hidden under the"
	cont "truck."
	
	para "It looks like a!"
	line "maid and flew"
	cont "towards Cerulean."
	
	para "My locator traced"
	line "it to some cave,"
	cont "but the signal"
	cont "was lost when it"
	cont "went to a lower"
	cont "level."
	
	para "Your TH-Dex is"
	line "more advanced"
	cont "than my locator."
	
	para "Maybe the <pkmn>"
	line "will appear when"
	cont "it's upgraded"
	cont "with a diploma."
	prompt
	
