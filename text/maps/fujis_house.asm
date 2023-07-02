_LavenderHouse1Text_1d8d1::
	text "That's odd, Mr.Fuji"
	line "isn't here."
	cont "Where'd he go?"
	done

_LavenderHouse1Text_1d8d6::
	text "Mr.Fuji had been"
	line "praying alone for"
	cont "Layla."
	done

_LavenderHouse1Text_1d8f4::
	text "This is really"
	line "Mr.Fuji's house."

	para "He's really kind!"

	para "He looks after"
	line "abandoned and"
	cont "orphaned <pkmn>!"
	done

_LavenderHouse1Text_1d8f9::
	text "It's so warm!"
	line "<pkmn> are so"
	cont "nice to hug!"
	done

_LavenderHouse1Text3::
	text "Nitori: Gwappa!@@"

_LavenderHouse1Text4::
	text "Wriggle: Gaoo!@@"

_LavenderHouse1Text_1d94c::
	text "Mr.Fuji: <PLAYER>."

	para "Your TH-Dex quest"
	line "may fail without"
	cont "love for your"
	cont "<pkmn>."

	para "I think this may"
	line "help your quest."
	prompt

_ReceivedFluteText::
	text "<PLAYER> received"
	line "a @"
	TX_RAM wcf4b
	text "!@@"

_FluteExplanationText::
	db $0
	para "Upon hearing <pkmn>"
	line "Flute, sleeping"
	cont "<pkmn> will"
	cont "spring awake."

	para "It works on all"
	line "sleeping <pkmn>."
	done

_FluteNoRoomText::
	text "You must make"
	line "room for this!"
	done

_MrFujiAfterFluteText::
	text "Mr.Fuji: Has my"
	line "flute helped you?"
	done

_LavenderHouse1Text6::
	text "<pkmn> Monthly"
	line "Grand Prize"
	cont "Drawing!"

	para "The application"
	line "form is..."

	para "Gone! It's been"
	line "clipped out!"
	done

;;;;;;;;;;;;;;;;;;;;;;joenote - adding text for fuji battle
_FujiText_challenge::
	text "Do you challenge"
	line "Mr.Fuji to a"
	cont "<pkmn> battle?"
	done

_FujiText_prebattle::
	text "So you know about"
	line "my former life as"
	cont "a scientist."
	
	para "Then you also"
	line "know why I quit."
	
	para "The gene splicing"
	line "data, samples,"
	cont "test subjects..."
	
	para "All was cast into"
	line "the waters of an"
	cont "Unknown Dungeon"
	
	para "I'd advise you to"
	line "stay away from"
	cont "there and leave"
	cont "the past buried."
	done

_FujiTextVictorySpeech::
	text "Hmm..."
	line "I'm a bit worried."
	
	para "The test subjects"
	line "might still be"
	cont "there."
	
	para "Who knows what"
	line "kind of <pkmn>"
	cont "they might have"
	cont "cloned themselves"
	cont "into?"

	para "Go if you must."
	line "Maybe it's you"
	cont "who can help fix"
	cont "past mistakes."

	para "Silph's Chief is"
	line "an old friend, so"
	cont "battle him too."
	prompt
	
_FujiTextMewtwo::
	text "That Satsuki you"
	line "have with you..."
	
;	para "...Such an angry"
;	line "disposition. Yet"
;	cont "you have soothed"
;	cont "its wrath."
	
	para "You must possess"
	line "a great love for"
	cont "your <pkmn>."
	
	para "Take this. I have"
	line "no reason to keep"
	cont "holding onto it."
	prompt
