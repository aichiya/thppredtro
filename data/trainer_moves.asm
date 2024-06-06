

;joenote - commenting this all out because yellow's method is now being used
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;LoneMoves:
;; these are used for gym leaders.
;; this is not automatic! you have to write the number you want to wLoneAttackNo
;; first. e.g., erika's script writes 4 to wLoneAttackNo to get mega drain,
;; the fourth entry in the list.
;
;; first byte:  pokemon in the trainer's party that gets the move
;; second byte: move
;; unterminated
;	db 1,BIDE
;	db 1,BUBBLEBEAM
;	db 2,THUNDERBOLT
;	db 2,MEGA_DRAIN
;	db 3,TOXIC
;	db 3,PSYWAVE
;	db 3,FIRE_BLAST
;	db 4,FISSURE
;
;TeamMoves:
;; these are used for elite four.
;; this is automatic, based on trainer class.
;; don't be confused by LoneMoves above, the two data structures are
;	; _completely_ unrelated.
;
;; first byte: trainer (all trainers in this class have this move)
;; second byte: move
;; ff-terminated
;	db LORELEI,BLIZZARD
;	db BRUNO,FISSURE
;	db AGATHA,TOXIC
;	db LANCE,BARRIER
;	db $FF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; yellow has its own format.

; entry = trainerclass, trainerid, moveset+, 0
; moveset = partymon location, partymon's move, moveid
SpecialTrainerMoves:
	db BROCK,$1 ; OK
	db 2,4,ROCK_SLIDE
	db 0
	
	;joenote - give the abra of the cerulean rival something to do
	;		-assume the rival got some TMs from Celadon City

;	db SONY1, $7
;	db 2,2,COUNTER
;	db 2,3,TRI_ATTACK
;	db 0
;	db SONY1, $8
;	db 2,2,COUNTER
;	db 2,3,TRI_ATTACK
;	db 0
;	db SONY1, $9
;	db 2,2,COUNTER
;	db 2,3,TRI_ATTACK
;	db 0
	
	db MISTY,$1 ; OK
	db 2,1,FLASH ; EStar
	db 2,2,AURORA_BEAM ; EStar
	db 2,3,BUBBLEBEAM ; EStar
	db 0
	
	db LT_SURGE,$1 ; OK
	db 3,1,FLASH ; Kirisame
	db 3,2,DOUBLE_TEAM ; Kirisame
	db 3,3,THUNDER_WAVE ; Kirisame
	db 3,4,THUNDERBOLT ; Kirisame
	db 0
	
	db ERIKA,$1 ; OK
	db 2,1,ICE_PUNCH ; ESanae
	db 2,2,WATERFALL ; ESanae
	db 2,3,RAZOR_WIND ; ESanae
	db 2,4,RAZOR_LEAF ; ESanae
	db 3,1,LEECH_SEED ; EYuuka
	db 3,2,MEGA_DRAIN ; EYuuka
	db 3,3,FIRE_PUNCH ; EYuuka
	db 3,4,THUNDERPUNCH ; EYuuka
	db 0
	
	db KOGA,$1 ; OK
	db 1,1,PSYCHIC_M ; EReisen
	db 1,2,CONFUSE_RAY ; EReisen
	db 1,3,AURORA_BEAM ; EReisen
	db 1,4,GLARE ; EReisen
	db 2,1,HAZE ; EYoumu
	db 2,2,SLASH ; EYoumu
	db 2,3,TOXIC ; EYoumu
	db 2,4,SUBSTITUTE ; EYoumu
	db 3,1,SLEEP_POWDER ; EEirin
	db 3,2,SURF ; EEirin
	db 3,3,MEGA_DRAIN ; EEirin
	db 3,4,THUNDERBOLT ; EEirin
	db 4,1,CONFUSE_RAY ; EYuyuko
	db 4,2,PETAL_DANCE ; EYuyuko
	db 4,3,HYPNOSIS ; EYuyuko
	db 4,4,HAZE ; EYuyuko
	db 0
	
	db SABRINA,$1 ; OK
	db 1,1,PSYCHIC_M ; EKaguya
	db 1,2,LEECH_SEED ; EKaguya
	db 1,3,LIGHT_SCREEN ; EKaguya
	db 1,4,REFLECT ; EKaguya
	db 2,1,PSYCHIC_M ; Hakurei
	db 2,2,SPIKE_CANNON ; Hakurei
	db 2,3,MEGA_PUNCH ; Hakurei
	db 2,4,LOW_KICK ; Hakurei
	db 3,1,PSYCHIC_M ; EEiki
	db 3,2,THUNDERPUNCH ; EEiki
	db 3,3,ICE_PUNCH ; EEiki
	db 3,4,GUILLOTINE ; EEiki
	db 4,1,PSYCHIC_M ; EYukari
	db 4,2,THUNDERBOLT ; EYukari
	db 4,3,ICE_BEAM ; EYukari
	db 4,4,FLAMETHROWER ; EYukari
	db 0
	
	db BLAINE,$1 ; OK
	db 1,1,HYPER_BEAM ; EMarisa
	db 1,2,FIRE_BLAST ; EMarisa
	db 1,3,BUBBLEBEAM ; EMarisa
	db 1,4,SPORE ; EMarisa
	db 2,1,FIRE_BLAST ; EMokou
	db 2,2,ROCK_SLIDE ; EMokou
	db 2,3,SUBMISSION ; EMokou
	db 2,4,DOUBLE_TEAM ; EMokou
	db 3,1,SONICBOOM ; ERemilia
	db 3,2,FIRE_BLAST ; ERemilia
	db 3,3,HAZE ; ERemilia
	db 3,4,MEGA_DRAIN ; ERemilia
	db 4,1,FIRE_BLAST ; EFlandre
	db 4,2,MEGA_DRAIN ; EFlandre
	db 4,3,SUBMISSION ; EFlandre
	db 4,4,EARTHQUAKE ; EFlandre
	db 0
	
	db GIOVANNI,$3 ; OK
	db 1,1,ROCK_SLIDE ; Genji
	db 1,2,SKY_ATTACK ; Genji
	db 1,3,METRONOME ; Genji
	db 1,4,EARTHQUAKE ; Genji
	db 2,1,SUBMISSION ; HKeine
	db 2,2,EARTHQUAKE ; HKeine
	db 2,3,ROCK_SLIDE ; HKeine
	db 2,4,MEGA_PUNCH ; HKeine
	db 3,1,SUBMISSION ; ESuika
	db 3,2,ROCK_SLIDE ; ESuika
	db 3,3,EARTHQUAKE ; ESuika
	db 3,4,MINIMIZE ; ESuika
	db 4,1,EARTHQUAKE ; ESuwako
	db 4,2,HYDRO_PUMP ; ESuwako
	db 4,3,BLIZZARD ; ESuwako
	db 4,4,ROCK_SLIDE ; ESuwako
	db 5,1,THUNDER_WAVE ; EKanako
	db 5,2,THUNDER ; EKanako
	db 5,3,FLASH ; EKanako
	db 5,4,EARTHQUAKE ; EKanako
	db 0
	
	db LORELEI,$1 ; OK
	db 1,1,ROCK_SLIDE ; ELetty
	db 1,2,BLIZZARD ; ELetty
	db 1,3,SONICBOOM ; ELetty
	db 1,4,EARTHQUAKE ; ELetty
	db 2,1,WATERFALL ; EKomachi
	db 2,2,HYPER_FANG ; EKomachi
	db 2,3,HAZE ; EKomachi
	db 2,4,ICE_PUNCH ; EKomachi
	db 3,1,AMNESIA ; ECirno
	db 3,2,BLIZZARD ; ECirno
	db 3,3,WATERFALL ; ECirno
	db 3,4,SONICBOOM ; ECirno
	db 4,1,ICE_BEAM ; EEiki
	db 4,2,THUNDERBOLT ; EEiki
	db 4,3,FLAMETHROWER ; EEiki
	db 4,4,PSYCHIC_M ; EEiki
	db 5,1,ROCK_SLIDE ; ESakuya
	db 5,2,ICE_PUNCH ; ESakuya
	db 5,3,SONICBOOM ; ESakuya
	db 5,4,DOUBLE_KICK ; ESakuya
	db 0

	db BRUNO,$1 ; OK
	db 1,1,ROCK_SLIDE ; ERumia
	db 1,2,CONFUSE_RAY ; ERumia
	db 1,3,MEGA_PUNCH ; ERumia
	db 1,4,EARTHQUAKE ; ERumia
	db 2,1,ROCK_SLIDE ; EMeiling
	db 2,2,EARTHQUAKE ; EMeiling
	db 2,3,SUBMISSION ; EMeiling
	db 2,4,TOXIC ; EMeiling
	db 3,1,SUBMISSION ; HKeine
	db 3,2,EARTHQUAKE ; HKeine
	db 3,3,ROCK_SLIDE ; HKeine
	db 3,4,MEGA_PUNCH ; HKeine
	db 4,1,SUBMISSION ; ESuika
	db 4,2,ROCK_SLIDE ; ESuika
	db 4,3,EARTHQUAKE ; ESuika
	db 4,4,MINIMIZE ; ESuika
	db 5,1,FIRE_BLAST ; EMokou
	db 5,2,ROCK_SLIDE ; EMokou
	db 5,3,SUBMISSION ; EMokou
	db 5,4,DOUBLE_TEAM ; EMokou
	db 0

	db AGATHA,$1 ; OK
	db 1,1,SING ; ELunasa
	db 1,2,CONFUSE_RAY ; ELunasa
	db 1,3,ICE_BEAM ; ELunasa
	db 1,4,PSYCHIC_M ; ELunasa
	db 2,1,FIRE_BLAST ; ERan
	db 2,2,EARTHQUAKE ; ERan
	db 2,3,CONFUSE_RAY ; ERan
	db 2,4,THUNDERPUNCH ; ERan
	db 3,1,SLASH ; EYoumu
	db 3,2,MEGA_PUNCH ; EYoumu
	db 3,3,HAZE ; EYoumu
	db 3,4,SONICBOOM ; EYoumu
	db 4,1,BONEMERANG ; EYukari
	db 4,2,BLIZZARD ; EYukari
	db 4,3,THUNDER ; EYukari
	db 4,4,REFLECT ; EYukari
	db 5,1,BLIZZARD ; EYuyuko
	db 5,2,PETAL_DANCE ; EYuyuko
	db 5,3,PSYCHIC_M ; EYuyuko
	db 5,4,HAZE ; EYuyuko
	db 0

	db LANCE,$1 ; OK
	db 1,1,CONFUSE_RAY ; EWriggle
	db 1,2,HI_JUMP_KICK ; EWriggle
	db 1,3,QUICK_ATTACK ; EWriggle
	db 1,4,SLUDGE ; EWriggle
	db 2,1,ROCK_SLIDE ; EMeiling
	db 2,2,EARTHQUAKE ; EMeiling
	db 2,3,SUBMISSION ; EMeiling
	db 2,4,TOXIC ; EMeiling
	db 3,1,SONICBOOM ; ERemilia
	db 3,2,FIRE_BLAST ; ERemilia
	db 3,3,HAZE ; ERemilia
	db 3,4,FLY ; ERemilia
	db 4,1,LEECH_SEED ; EYuuka
	db 4,2,MEGA_DRAIN ; EYuuka
	db 4,3,FIRE_PUNCH ; EYuuka
	db 4,4,HYPER_BEAM ; EYuuka
	db 5,1,ROCK_SLIDE ; EMeiling
	db 5,2,EARTHQUAKE ; EMeiling
	db 5,3,SUBMISSION ; EMeiling
	db 5,4,AGILITY ; EMeiling
	db 0

	db SONY3,$1 ; OK
	db 1,1,FIRE_BLAST ; EAlice
	db 1,2,EGG_BOMB ; EAlice
	db 1,3,PSYCHIC_M ; EAlice
	db 1,4,STRING_SHOT ; EAlice
	db 2,1,BLIZZARD ; EYuyuko
	db 2,2,PETAL_DANCE ; EYuyuko
	db 2,3,HYPNOSIS ; EYuyuko
	db 2,4,HAZE ; EYuyuko
	db 3,1,SUBMISSION ; ESuika
	db 3,2,ROCK_SLIDE ; ESuika
	db 3,3,EARTHQUAKE ; ESuika
	db 3,4,MINIMIZE ; ESuika
	db 4,1,SONICBOOM ; ERemilia
	db 4,2,FIRE_BLAST ; ERemilia
	db 4,3,RAZOR_WIND ; ERemilia
	db 4,4,MEGA_DRAIN ; ERemilia
	db 5,1,THUNDER_WAVE ; EKanako
	db 5,2,THUNDER ; EKanako
	db 5,3,FLASH ; EKanako
	db 5,4,EARTHQUAKE ; EKanako
	db 6,1,MEGA_KICK ; EReimu
	db 6,2,ROCK_SLIDE ; EReimu
	db 6,3,SUBMISSION ; EReimu
	db 6,4,RAZOR_WIND ; EReimu
	db 0

	db SONY3,$2 ; OK
	db 1,1,FIRE_BLAST ; EAlice
	db 1,2,EGG_BOMB ; EAlice
	db 1,3,PSYCHIC_M ; EAlice
	db 1,4,STRING_SHOT ; EAlice
	db 2,1,BLIZZARD ; EYuyuko
	db 2,2,PETAL_DANCE ; EYuyuko
	db 2,3,HYPNOSIS ; EYuyuko
	db 2,4,HAZE ; EYuyuko
	db 3,1,SUBMISSION ; ESuika
	db 3,2,ROCK_SLIDE ; ESuika
	db 3,3,EARTHQUAKE ; ESuika
	db 3,4,MINIMIZE ; ESuika
	db 4,1,SONICBOOM ; ERemilia
	db 4,2,FIRE_BLAST ; ERemilia
	db 4,3,RAZOR_WIND ; ERemilia
	db 4,4,MEGA_DRAIN ; ERemilia
	db 5,1,THUNDER_WAVE ; EKanako
	db 5,2,THUNDER ; EKanako
	db 5,3,FLASH ; EKanako
	db 5,4,EARTHQUAKE ; EKanako
	db 6,1,HORN_DRILL ; ESakuya
	db 6,2,ROCK_SLIDE ; ESakuya
	db 6,3,SONICBOOM ; ESakuya
	db 6,4,AMNESIA ; ESakuya
	db 0

	db SONY3,$3 ; OK
	db 1,1,FIRE_BLAST ; EAlice
	db 1,2,EGG_BOMB ; EAlice
	db 1,3,PSYCHIC_M ; EAlice
	db 1,4,STRING_SHOT ; EAlice
	db 2,1,BLIZZARD ; EYuyuko
	db 2,2,PETAL_DANCE ; EYuyuko
	db 2,3,HYPNOSIS ; EYuyuko
	db 2,4,HAZE ; EYuyuko
	db 3,1,SUBMISSION ; ESuika
	db 3,2,ROCK_SLIDE ; ESuika
	db 3,3,EARTHQUAKE ; ESuika
	db 3,4,MINIMIZE ; ESuika
	db 4,1,SONICBOOM ; ERemilia
	db 4,2,FIRE_BLAST ; ERemilia
	db 4,3,RAZOR_WIND ; ERemilia
	db 4,4,MEGA_DRAIN ; ERemilia
	db 5,1,THUNDER_WAVE ; EKanako
	db 5,2,THUNDER ; EKanako
	db 5,3,FLASH ; EKanako
	db 5,4,EARTHQUAKE ; EKanako
	db 6,1,HYPER_BEAM ; EMarisa
	db 6,2,FIRE_BLAST ; EMarisa
	db 6,3,BUBBLEBEAM ; EMarisa
	db 6,4,SPORE ; EMarisa
	db 0

	;prof oak's pokemon
	db PROF_OAK,$1 ; OK
	db 1,1,SONICBOOM ; ERemilia
	db 1,2,FIRE_BLAST ; ERemilia
	db 1,3,RAZOR_WIND ; ERemilia
	db 1,4,MEGA_DRAIN ; ERemilia
	db 2,1,BLIZZARD ; EYuyuko
	db 2,2,PETAL_DANCE ; EYuyuko
	db 2,3,HYPNOSIS ; EYuyuko
	db 2,4,HAZE ; EYuyuko
	db 3,1,SUBMISSION ; ESuika
	db 3,2,ROCK_SLIDE ; ESuika
	db 3,3,EARTHQUAKE ; ESuika
	db 3,4,MINIMIZE ; ESuika
	db 4,1,MEGA_KICK ; EReimu
	db 4,2,ROCK_SLIDE ; EReimu
	db 4,3,SUBMISSION ; EReimu
	db 4,4,RAZOR_WIND ; EReimu
	db 5,1,ICE_BEAM ; EEiki
	db 5,2,THUNDERBOLT ; EEiki
	db 5,3,FLAMETHROWER ; EEiki
	db 5,4,PSYCHIC_M ; EEiki
	db 0

	db PROF_OAK,$2 ; OK
	db 1,1,SONICBOOM ; ERemilia
	db 1,2,FIRE_BLAST ; ERemilia
	db 1,3,RAZOR_WIND ; ERemilia
	db 1,4,MEGA_DRAIN ; ERemilia
	db 2,1,BLIZZARD ; EYuyuko
	db 2,2,PETAL_DANCE ; EYuyuko
	db 2,3,HYPNOSIS ; EYuyuko
	db 2,4,HAZE ; EYuyuko
	db 3,1,SUBMISSION ; ESuika
	db 3,2,ROCK_SLIDE ; ESuika
	db 3,3,EARTHQUAKE ; ESuika
	db 3,4,MINIMIZE ; ESuika
	db 4,1,HORN_DRILL ; ESakuya
	db 4,2,ROCK_SLIDE ; ESakuya
	db 4,3,SONICBOOM ; ESakuya
	db 4,4,AMNESIA ; ESakuya
	db 5,1,ICE_BEAM ; EEiki
	db 5,2,THUNDERBOLT ; EEiki
	db 5,3,FLAMETHROWER ; EEiki
	db 5,4,PSYCHIC_M ; EEiki
	db 0

	db PROF_OAK,$3 ; OK
	db 1,1,SONICBOOM ; ERemilia
	db 1,2,FIRE_BLAST ; ERemilia
	db 1,3,RAZOR_WIND ; ERemilia
	db 1,4,MEGA_DRAIN ; ERemilia
	db 2,1,BLIZZARD ; EYuyuko
	db 2,2,PETAL_DANCE ; EYuyuko
	db 2,3,HYPNOSIS ; EYuyuko
	db 2,4,HAZE ; EYuyuko
	db 3,1,SUBMISSION ; ESuika
	db 3,2,ROCK_SLIDE ; ESuika
	db 3,3,EARTHQUAKE ; ESuika
	db 3,4,MINIMIZE ; ESuika
	db 4,1,HYPER_BEAM ; EMarisa
	db 4,2,FIRE_BLAST ; EMarisa
	db 4,3,BUBBLEBEAM ; EMarisa
	db 4,4,SPORE ; EMarisa
	db 5,1,ICE_BEAM ; EEiki
	db 5,2,THUNDERBOLT ; EEiki
	db 5,3,FLAMETHROWER ; EEiki
	db 5,4,PSYCHIC_M ; EEiki
	db 0
	
	;mr fuji battle
	db GENTLEMAN,$5 ; OK
	db 1,1,ROCK_SLIDE ; Genji
	db 1,2,SKY_ATTACK ; Genji
	db 1,3,METRONOME ; Genji
	db 1,4,EARTHQUAKE ; Genji
	db 2,1,THUNDER_WAVE ; Kirisame
	db 2,2,THUNDERBOLT ; Kirisame
	db 2,3,DOUBLE_TEAM ; Kirisame
	db 2,4,HAZE ; Kirisame
	db 3,1,PSYCHIC_M ; Hakurei
	db 3,2,SUBMISSION ; Hakurei
	db 3,3,SEISMIC_TOSS ; Hakurei
	db 3,4,REFLECT ; Hakurei
	db 4,1,FIRE_BLAST ; EAlice
	db 4,2,EGG_BOMB ; EAlice
	db 4,3,ICE_BEAM ; EAlice
	db 4,4,STRING_SHOT ; EAlice
	db 5,1,LEECH_SEED ; EYuuka
	db 5,2,HYPER_BEAM ; EYuuka
	db 5,3,FLAMETHROWER ; EYuuka
	db 5,4,MEGA_DRAIN ; EYuuka
	db 0
	
	;Chief battle
	db CHIEF,$1 ; OK
	db 1,1,THUNDERBOLT ; ENitori
	db 1,2,THUNDER_WAVE ; ENitori
	db 1,3,BUBBLEBEAM ; ENitori
	db 1,4,FLASH ; ENitori
	db 2,1,WATERFALL ; EEirin
	db 2,2,SLUDGE ; EEirin
	db 2,3,SLEEP_POWDER ; EEirin
	db 2,4,ICE_BEAM ; EEirin
	db 5,1,THUNDER_WAVE ; EKanako
	db 5,2,THUNDER ; EKanako
	db 5,3,MEGA_DRAIN ; EKanako
	db 5,4,EARTHQUAKE ; EKanako
	db 4,1,BONEMERANG ; EYukari
	db 4,2,BLIZZARD ; EYukari
	db 4,3,THUNDER ; EYukari
	db 4,4,REFLECT ; EYukari
	db 0
	
	;Seiga battle
	db JR_TRAINER_F,$18 ; OK
	db 1,1,ROCK_SLIDE ; Genji
	db 1,2,SKY_ATTACK ; Genji
	db 1,3,METRONOME ; Genji
	db 1,4,EARTHQUAKE ; Genji
	db 2,1,THUNDER_WAVE ; Kirisame
	db 2,2,THUNDERBOLT ; Kirisame
	db 2,3,DOUBLE_TEAM ; Kirisame
	db 2,4,HAZE ; Kirisame
	db 3,1,PSYCHIC_M ; Hakurei
	db 3,2,SUBMISSION ; Hakurei
	db 3,3,SEISMIC_TOSS ; Hakurei
	db 3,4,REFLECT ; Hakurei
	db 4,1,FIRE_BLAST ; EAlice
	db 4,2,EGG_BOMB ; EAlice
	db 4,3,CLAMP ; EAlice
	db 4,4,STRING_SHOT ; EAlice
	db 5,1,LEECH_SEED ; EYuuka
	db 5,2,HYPER_BEAM ; EYuuka
	db 5,3,FLAMETHROWER ; EYuuka
	db 5,4,MEGA_DRAIN ; EYuuka
	db 6,1,HORN_DRILL ; ESakuya
	db 6,2,ROCK_SLIDE ; ESakuya
	db 6,3,SEISMIC_TOSS ; ESakuya
	db 6,4,KINESIS ; ESakuya
	db 0
	
	;Red battle | Future Marry/Renko
	db LASS,$13 ; OK
	db 1,1,SLASH ; EYoumu
	db 2,2,QUICK_ATTACK ; EYoumu
	db 3,3,HAZE ; EYoumu
	db 4,4,SONICBOOM ; EYoumu
	db 2,1,FIRE_BLAST ; EAlice
	db 2,2,EGG_BOMB ; EAlice
	db 2,3,CLAMP ; EAlice
	db 2,4,STRING_SHOT ; EAlice
	db 3,1,BLIZZARD ; ESanae
	db 3,2,HYDRO_PUMP ; ESanae
	db 3,3,TOXIC ; ESanae
	db 3,4,MEGA_DRAIN ; ESanae
	db 4,1,HORN_DRILL ; ESakuya
	db 4,2,ROCK_SLIDE ; ESakuya
	db 4,3,SEISMIC_TOSS ; ESakuya
	db 4,4,KINESIS ; ESakuya
	db 5,1,HYPER_BEAM ; EMarisa
	db 5,2,FIRE_BLAST ; EMarisa
	db 5,3,BUBBLEBEAM ; EMarisa
	db 5,4,SPORE ; EMarisa
	db 6,1,MEGA_KICK ; EReimu
	db 6,2,ROCK_SLIDE ; EReimu
	db 6,3,SUBMISSION ; EReimu
	db 6,4,RAZOR_WIND ; EReimu
	db 0
	
	;multi missingno superboss battle
	db CHIEF,$3
	db 1,1,LEECH_SEED
	db 1,2,TOXIC
	db 1,3,SUPER_FANG
	db 1,4,NIGHT_SHADE
	db 2,1,EARTHQUAKE
	db 2,2,HYPER_BEAM
	db 2,3,CONFUSE_RAY
	db 2,4,SPORE
	db 3,1,PSYCHIC_M
	db 3,2,BLIZZARD
	db 3,3,THUNDER_WAVE
	db 3,4,REST
	db 0
	
	db $ff
