# Shin Pokémon Red, Blue, Green, Red-JP, & Blue-JP

Version 1.23.15

*Shin (真) - The kanji for "true".  
Used in Japanese media to denote a remastering, updated retelling , or a "true form" of something.*  

     This is an enhancement ROM hack of Pokemon Red & Blue based on the Pret team's pokered disassembly project.
It is a mostly-vanilla hack that focuses on fixing game engine bugs and oversights from the original game.
Additionally, trainer AI routines are improved and multiple quality-of-life enhancements have been added.
It also acts as a kind of research-informed speculative work that presents an alternate interpretation of the games.
Specifically, that being what the 2016 Nintendo Virtual Console re-release of Gen-1 Pokemon could have been.
It is the image of a glitch-free experience with player-friendly goodies and enhancements common to other modern remasterings.  
     The main purpose of the accompanying source code repository is to study, comment upon, and repair functional errors.
It is important to record, for posterity's sake, the methods used for restoring the game to an error-free state.
Finally, the source code documents many differences and changes between the various Japanese and English releases.

Read the ["Guide to New Player Functions"](/patches_and_info/Guide_to_New_Player_Functions.md) for instructions on all the new stuff the player can do.

Don't like the non-vanilla changes? Prefer only the bugfixes and AI improvements? Want a codebase from which to launch your own rom hack?
Then the [Lite branch](https://github.com/jojobear13/shinpokered/tree/lite) is what you want. Head on over and start compiling.

Feel free to discuss this project in its dedicated [Pokecommunity thread](https://www.pokecommunity.com/showthread.php?t=427398).


#Patch Info  
-----------
BPS patches are provided for entry into your preferred emulator, patching tool, or other accessory that supports the BPS format.  
Download and enter a patch which corresponds to the ROM of which you own a lawful copy.  
- **Red patches (Shin Pokemon Red, Red_origback, and Red-JP) are intended for USA Red.**
  - MD5 Hash: 3d45c1ee9abd5738df46d2bdda8b57dc
- **All other patches (Blues and Greens) are intended for USA Blue.**
  - MD5 Hash: 50927e843568814f7ed45ec4f944bd8b
- The "_origback" patches are alternatives that keep the original back sprites. 

***Includes Pokemon Green and Japanese Red!***
- The compiler primarily builds the graphics and cerulean cave layout back to the original japanese release.
- Pokedex entries adapt the original Green version text that was translated in Fire Red.
- Pokedex uses metric units.

***Includes Japanese Blue!***
- Primarily builds the lists for encounters, trades, and prizes that were in the never-localized japanese release.
- Pokedex uses metric units.
- Other minor graphical adjustments.

***Updating Your Save File***
Deactivate all special options and NPC toggles in the old save if it's from an earlier patch.  
When loading an old save file with the latest patch, the player is automatically warped to Pallet Town.  
Normally this will be enough to update the save file without doing anything else.  
It's possible you may still have issues upon loading a save from a previous patch or an unpatched game.  
To prevent this from happening, save in the outdoor Pallet Town map on the old save.  
You might be blocked by invisible walls upon loading the game.  
To fix this, you must use the Softlock Warp detailed below to teleport back to Pallet Town.  

		
#Screenshots
-----------
<details>
  <summary>Click to Show/Hide Images</summary>

Title Screens  (GBC Palettes)  
![Title Screen 1](/screenshots/bgb00028.bmp?raw=true)
![Title Screen 2](/screenshots/bgb00029.bmp?raw=true)
![Title Screen 3](/screenshots/bgb00030.bmp?raw=true)  
![Title Screen 4](/screenshots/bgb00031.bmp?raw=true)
![Title Screen 5](/screenshots/bgb00032.bmp?raw=true)

Pokemon Yellow Backported Palettes and Gym Leader Names Restored  
![Backported Palettes](/screenshots/bgb00022.bmp?raw=true)
![Gym Leader Names](/screenshots/bgb00037.bmp?raw=true)

Rematches  
![Rematches](/screenshots/bgb00003.bmp?raw=true)

Trainer AI, Shiny Palette & Symbol, Exp Bar, Spaceworld Back Sprites  
Gender & Caught symbols in Wild Battles, Colored Attacks in GBC-mode  
Colored tossing animations in GBC-mode  
![Battle Screen Upgrades 1](/screenshots/bgb00020.bmp?raw=true)
![Battle Screen Upgrades 2](/screenshots/bgb00021.bmp?raw=true)
![Battle Screen Upgrades 3](/screenshots/shinpokered_colored_tossing.gif?raw=true)

TMs in Marts with Abbreviated Names  
![Marts](/screenshots/bgb00016.bmp?raw=true)

Shiny Animation  
![Shiny Animation](/screenshots/bgb00019.gif?raw=true)

Girl Trainer  
![Girl Trainer 1](/screenshots/bgb00026.bmp?raw=true)
![Girl Trainer 2](/screenshots/bgb00025.bmp?raw=true)

Temporary Field Move Slot  
![Field SLot 1](/screenshots/bgb00004.bmp?raw=true)
![Field SLot 2](/screenshots/bgb00005.bmp?raw=true)

Many new NPCs to toggle features  
![NPC 1](/screenshots/bgb00007.bmp?raw=true)
![NPC 2](/screenshots/bgb00008.bmp?raw=true)
![NPC 3](/screenshots/bgb00009.bmp?raw=true)  
![NPC 4](/screenshots/bgb00010.bmp?raw=true)
![NPC 5](/screenshots/bgb00011.bmp?raw=true)
![NPC 6](/screenshots/bgb00012.bmp?raw=true)

Gamma Shader for LCD Screens (Left image is Off / Right image is On)  
![Shader Off](/screenshots/bgb00035.bmp?raw=true)
![Shader On](/screenshots/bgb00036.bmp?raw=true)

**Stats for Nerds**  
<details>
  <summary>Click to Show/Hide DV Stats</summary>

Consecutive calls to the RNG function were performed in order to fill the memory with 8192 bytes of RNG data.  
These bytes were dumped and then then parsed into nybbles in order to simulate random DV values for pokemon.  
The following are histograms and statistical information on the various ways this project generates DVs.  
All data was generated using xor-shift methodology, not the vanilla DIV-register method.  

Standard wild pokemon DVs  
![Standard](/screenshots/standard_wild_DVs.PNG?raw=true)

Hard mode wild pokemon DVs  
![Standard](/screenshots/hard_mode_wild_DVs.PNG?raw=true)

Hard mode trainer DVs  
![Standard](/screenshots/hard_mode_trainer_DVs.PNG?raw=true)

</details>

</details>


#Summary
-----------

***Lite features for a cleaned-up purist experience***

A huge number of bugs, glitches, oversights, and text errors of all sorts have been fixed. 
There are too many to enumerate in a simple summary, and some of them are very obscure or previously undiscovered.

Includes english builds of Green and Red-JP versions. 
It swaps the graphics, Cerulean Cave layout, and a few lines of text to replicate the original japanese releases.
The original release pokedex entries have been adapted from the Fire Red translations.
It also has all the pokedex data in metric.

Includes an english build of Blue-JP version.
It swaps prizes, trades, wild encounter data, and some text to replicate the original japanese release.
It also has all the pokedex data in metric.

Engine features from USA Yellow version have been backported.
No more duochrome! Yellow's color scheme gets converted to display on the Gameboy Color.
Attack animations are colored according to type during Gameboy Color play.
Yellow's audio engine is backported for stereo sound support. 

New options that can be toggled!
- Hit SELECT on the options screen to cycle through the audio output types.
- Playing in GBC mode on a backlit LCD screen? Press SELECT at the copyright screen to activate color correction.
- Experimental 60FPS Mode: Place the cursor over CANCEL in the options screen and toggle by pressing LEFT or RIGHT.
- Zero-Delay Text: Text with zero frame delay can be toggled in the options menu; press LEFT with the cursor on FAST.
- Hard Mode: With the cursor in BATTLE STYLE, press RIGHT to toggle hard mode on/off (LEFT will not toggle).

The hard mode option increases difficulty by making the stats of trainer pokemon more on your level.
It also doubles the effect of the X-stat items that AI trainers are fond of.
And it disallows the use of Revive items in battle.
Non-link battles will use the Stadium 1 critical hit chance formulas.
Finally, it makes catching a wild Mewtwo more challenging.

Trainer AI has been improved and greatly expanded.
Some trainers will even try to switch pokemon intelligently.

You get notified when a box is filled (either via catching or depositing a pokemon).

Switching out of a trapping move wastes the trapper's turn as per Pokemon Stadium.
This prevents unbeatable AI scenarios as well as a PP underflow glitch.

Rage is limited to 2-3 turns but attack boosts are kept.
This is primarily to prevent infinite battle loops.

Sleep does not prevent choosing a move, and the move is used upon waking up.
To maintain sleep move accuracy, sleep starts with a counter of at least 2.
And Rest now sets the sleep counter to 3.  
   
   
***Additional Master features that go beyond engine modifications and fixes***

All 151 pkmn are available in one version including trade evolutions (rarities may vary per version).

You can play as a boy or a girl.

There's an EXP bar in battle.

You can hunt for shiny pokemon, and they are valid with Gen 2 games.

No more grinding wild pokemon. Nearly all trainers can be rematched just by talking to them once or twice.

You can choose RUN while holding SELECT in trainer battles to forfeit the match and black yourself out.

There is a built-in nuzlocke mode that can be toggled from the options menu.

The girl in Oak's lab toggles wild pokemon randomization.
If activated early enough in the game, your starter pokemon choices are randomized as well.

One of the aides in Oak's lab toggles scaling of trainer rosters to your level (evolving them if applicable).

As an alternative to trainer scaling, there is now an obedience level-cap that can be toggled in the options menu.
With the cursor in the BATTLE STYLE section, press A to toggle it on and off.
While active, the current maximum obedience level will display in the options menu.
All pokemon, not just trades, will start to disobey if over the displayed level cap.

The other aide in Oak's lab toggles a pokeball-caught symbol in battle after obtaining the pokedex.
To help with Gen 2 interaction, this also applies a gender symbol to species that can be male or female.

Another aide npc is in the Viridian pokemon center. He will toggle on/off randomization of non-special trainers.

An aide is in the Celadon Diner. He will toggle on/off a catch-up EXP boost function for under-leveled pokemon.

Item, Sleep, Freeze, and Trapping clauses can each be toggled by the Clause Brothers in Viridian City.
 
The bag now supports an additional item list for an extra 20 slots of space!
Press START on the bag menu to hot-swap the item list that populates the active bag.
The game's systems will generally detect items in the non-active bag space.
Unique systems, such as Pokemon Stadium, will only recognize the active bag's item list.

Each pokemon on your team has a field move slot. 
These slots can temporarily hold a HM move for overworld-use only.
No longer do you have to sacrifice one of your four moves for a HM move.

An experimental New Game+ has been added.
It can be enabled if you have an uncorrupt save file wherein the Elite 4 have been beaten.
Press and hold SELECT while choosing New Game; a jingle confirms activation.

The Cinnabar Lab allows for cloning and genetic modification of pokemon.
It does this by mixing their DVs as of they were akin to genes and alleles.
This replicates the ability to do selective breeding for DVs in a way that's more realistic.

Lots of quick-key features.
- Quick 'Owned' Check - Place the cursor over FIGHT and press Select to play the enemy 'mon cry if it's already owned.
- Softlock Warp - Instantly teleport back to your mom's house if you get stuck.
- Running Shoes - Hold B to double your speed when walking, surfing, and biking. Includes proper animation speed-up!
- Quick HM Use - Press SELECT to use HMs based on proper context.
- Quick Bike/Rod - Press SELECT while holding A to automatically get on/off your bike or use the best rod in your inventory.
- View Stat EXP - Hold SELECT and enter the status screen to print a 'mons stat exp.
- View DVs - Hold START and enter the status screen to print a 'mons DVs.
- View Shiny Palette - When playing in color, hold SELECT when choosing a 'dex entry to load the shiny palette.
  
New NPCs!
- The move relearner and deleter is in Saffron City.
- An NPC in the Celadon Hotel will pay COINS for showing him pokemon as an alternative to slots.
- A new drink stand on the route 19 beach sells vending machine drinks.
- After the Elite-4, one of the rocket grunts in Celadon City will sell coins in bulk.
- After the Elite-4, a new vendor opens up in Celadon allowing the purchase of normally unique items.
- After the Elite-4, there is an NPC in the east-west underground path that generates random trainer battles.
- After the Elite-4, there is an NPC in the north-south underground path that generates mirror matches.
- After the Elite-4, the game corner chief will buy pokemon from the player.
- There's a tournament being held in the SS Anne's kitchen after the Elite-4 are beaten. Yes, the ship returns!
- Added some special post-game trainer battles as fun little easter eggs. Can you find and defeat all five?

Changes to fishing!
- All rods have an expanded level range.
- The Old Rod has an expanded 'mon list.
- The Good Rod has an expanded 'mon list.
- The Route 12 Fishing Guru can be visited upon first reaching Lavender Town.
- The locations of the Good and Super Rod have been swapped.

Other minor changes to lessen annoyance.
- Low HP alarm only plays three times then turns itself off.
- TMs and HMs now have their move names (albeit abbreviated) appended to the item names.
- All TMs can be repurchased as they are strategically scattered across all the Kanto pokemarts.
- The safari zone mechanics run off level instead of speed, and safari balls have a boosted catch rate.
- Slot machines are a little more lucky, so now you can actually win big.
- CUT is not needed to get to Lt. Surge and Erika (a blocking event replaces the Vermilion shrub).
- Yellow version learnsets have been integrated, and stone evolutions gain back some level-up moves.
- Trapping moves play a 'poof' animation on the move's final turn in order to inform the player.
- A recalibrated daycare gives experience points scaled to your gym progress.
- The daycare lets you select moves to forget (if any) upon retreiving your pokemon.
- Retrieving a daycare pokemon that could have evolved via level will trigger evolution and learn any missed-out moves.

Cheats and Secrets!
- A pokemon with Pay Day in your top slot might come in handy at the Game Corner.
- New item, the M.GENE! Could it give low-DV pokemon a boost?
- Max-out your pokemon's hidden potential with the MIST STONE.
- Five post-game special trainers to find and defeat! What may reappear when they are all defeated?
- If a level-100 Chansey leads your party, you are bound to have some lucky encounters.
- New Super Boss: Do you dare to activate Missingno at the Cinnabar shore? Only if you got your 'dex diploma.
- New Super Boss: Missingno not hard enough for you? Try activating it at the infamous Seafoam shore!
- The SS Anne has a post-game tournament. Try winning with a pikachu in your party.
- And several others!


#Compatibility Notes
-----------

- **Certain emulators are known to cause bugs due to inaccuracies in replicating the original hardware**
  - An accurate emulator, preferably a GBC-dedicated emulator, is required in order to avoid unexpected bugs
  - Goomba and Pizza Boy in particular are known to be problematic
  - BGB is the supported standard due to its accuracy and debugging tools
- Compatible with original Gameboy hardware (DMG, Super, Pocket, Color, Advance, SP)
- Potentially compatible with Pokemon Stadium 1 & 2 (using original Nintendo hardware)
  - Simpler flash carts (like cheap bootlegs) are recognized, but products with firmware like the EZ Flash JR. will not work.
  - Works with the save file operations (importing pokemon, item management, and box management) of both Stadium 1 and 2.
  - Will play and save in the GB Tower of Stadium 2.
  - Will **not work** with the GB Tower of Stadium 1.
- Might be possible to use a save from vanilla USA red/blue with this rom hack 
  - Save outside in Pallet Town before transferring over
  - Use the Softlock Warp to clear any invisible walls
- New builds are tested and debugged with the BGB 1.5.8 emulator and verified using original hardware
- Link trading with an original retail cartridge appears to work properly on real hardware
- Link trading between the lite and master branches appears to work properly on real hardware
- Link battles are still largely untested, and they are unsupported in the following ways:
  - Link battling between a master branch build and any other non-master branch build
  - Link battling between a lite branch build and any other non-lite branch build
  - Link battling between builds of dissimilar revisions
- A revision control function has been added that will cancel unsupported cable links
- Link functions via 3DS hardware and its Virtual Console emulator are not supported at this time


#Changelog From the Last Full Release
-----------
**Note: Changelogs may contain spoilers**  
[View the Consolidated Changelog Document](/patches_and_info/changelog_from_v1.23.md)  

v1.23.01  
- Green and Red-JP have the original front sprites for fossil kabutops and fossil aerodactyl
- Green and Red-JP have the original text box corners 

v1.23.02  
- Added nuzlocke mode

v1.23.03  
- Restored intro "Presents" for all builds
- Added rom hack version tracking for save files
  - It's a single byte in the save file that gets incremented each version
  - If the save byte does not match, the player is automatically warped back to Pallet Town
  - Helps prevent crashes and glitches when updating an older save file
- Adapted the japanese title screen logo, sfx, and motion for the jp builds
- Minor timing fix to title object palette loading
- Fixed Raticate not appearing in Unknown Dungeon 2F in Blue-Jp
- Fixed incorrect encounters on route 13 for some versions

v1.23.04  
- Tweaked a flag for shinies so it can be used as a debugging toggle
- The girl in Oak's lab toggles a built-in randomizer for wild pokemon and your starters
  - Shuffles all pokemon that can be gained through walking, surfing, fishing, or from the game corner
  - If activated early enough, your starter pokemon options are shuffled as well
  - Randomizes using a saved seed value, so the shuffled order is always preserved between play sessions
  - A new random seed is generated upon each new game
  - There are three pokemon lists based on base-stat-total; A, B, and C tiers
  - Pokemon are only shuffled within their own list in order to maintain some modicum of balance
  - Scripted events are unaffected (gifts, in-game trades, static encounters, etc)
  - The game's five legendary pokemon are excluded from randomization
  - The AREA feature of the pokedex automatically adjusts to show the new pokemon locations
- Paras is gifted in the Route 2 house in case the player has no pokemon that can learn Cut

v1.23.05  
- The function that shows the dex entry for starter pokemon is now more robust
  - It now works for any pokemon (like if the starters are changed or randomized)
  - It keeps a backup of the pokedex-owned flags instead of erasing them
  - Removed the unused Ivysaur flag
- The 60fps mode has better performance when playing in GBC-mode
  - Does this by using the double-speed feature of the GBC's processor 
  - Uses more battery as a trade-off
- Fixed an invalid apostrophe
- Fixed gift pokemon not having above-average DVs if sent to the box
- Added spaceworld-style trainer back sprites for consistency with the spaceworld 'mon back sprites 
- Fixed a grass tile in the Forest tileset not counting for encouner generation
- Recalibrated the experience gain at the daycare
- The daycare lets you select moves to forget (if any) upon retreiving your pokemon
- Retrieving a daycare pokemon that could have evolved via level will trigger evolution and learn any missed-out moves
- Adjusted Oak's pokemon moves
- Fixed text overlap for trainer Seiga

v1.23.06  
- The static wild encounters (voltorbs and legendaries) now respond to the Chansey cheat for shiny hunting
- Organized front ant back battle sprites to be controlled via assembler tags in the makefile
- Organized the female trainer code to be activated via assembler tags in the makefile (for easy reference)
- Added shiny mercy 
  - When a player encounters an AI trainer shiny pokemon, the next wild encounter will be shiny
  - Side effect: Because trainer 'mons can't be shiny in SHIFT mode, SET mode gives more chances to find wild shinies
- AI can now handle fly/dig loops between the two pokemon

v1.23.07  
- Fixed pewter npc following distance in 60 fps mode
- Fixed rom hack byte not getting set on new game
- Battle sprite organization updates and extra backs
- You will now be given the choice to warp if the rom hack version does not match
- The position of both switches in Vermilion Gym are now determined at the same time
- The switches in Vermilion Gym can now be discovered independently from one another
- Switches in Vermilion Gym will now properly take into acount vertical adjacents
- Fixed an issue with trapping moves being allowed on switch-in
- Adjusted some AI anti-spam for status moves
- Changed border block on route 16 to water to make it consistent with route 17
- Increased the maximum game clock to 32767 hours
- Fixed typo causing incorrect game corner prizes
- Added new superboss at the seafoam shore (activated the same as the existing missingno fight)
- Assigned a proper forget-move sfx during battle
- Added a PC to the daycare
- Teaching a TM as a field move (Dig/Teleport) no longer consumes the TM
- Added visual indicator when swapping bag space
- The daycare can now support two evolutions back-to-back
- Fixed input priority on menus
- Minor adjustments to title screen and intro
- Re-added the reference to the Kanto region in the JP translation
- Restored SHOP and POKE building tiles in Blue-JP
- SGB borders for JP versions are restored (with fixed centering for text)

v1.23.08  
- Daycare allows HM moves on entered pokemon
- Added cloning and gene splicing

v1.23.09  
- Scaled back fishing, reduced its randomness, and made it more map-dependent
- If on GBC, intitializing options turns 60 fps ON
- Minor code correction to Twineedle to prevent future errors 
- Show Mewtwo to Mr. Fuji after beating the Elite 4 for a M.GENE
- Added Bill's secret garden behind his house
  - Put Mew in your top spot and show Bill to gain access
  - You will encounter the starter pokemon plus some other rarer pokemon
  - Shiny rates are 1-in-128 in this area
- Added more text corrections for JP versions
- Added sfx variations unique to JP versions
- Leech seed health drain animation now has correct coloring on GBC
- In GBC-mode, when a pokemon is caught, the resting ball now has a defined color
- Tossing pokeballs have color in GBC mode
- Fixed an issue where the shiny animation has the wrong palette for the opponent on the GBC
- The move relearner and move deleter code is now tethered to the _MOVENPCS makefile tag
- Swapped a trade NPC to a gentleman in Green and RedJP
- Fixed pokemon category translation: "Rat" to "Mouse"
- Fixed pokemon category translation: "Shellfish" to "Shell"
- Fixed translation: Route 14 trainer's comment about the legendary birds
- Using X-Accuracy with a OHKO move now allows it to hit faster opponents
- Switched over to the xor-shift method of RNG
- RAM adress D732 now gets cleared upon a new game
- Fixed a bug having to do with rare instances of bending the audio pitch
- Cannot use poison to black yourself out of the cable club because entering the club now heals your party
- Cannot use poison to black yourself out of the safari zone because the safari minigame now stops poison damage
- Cannot perform the 99-stack glitch anymore
- Fixed an offset bug with the lucky game corner machine
- Victory music won't play if a wild 'mon faints but the player has no 'mons remaining; it's a blackout
- Fixed screen tearing in battle when player or 'mon slides off the screen
- The running shoes code is now tethered to the _RUNSHOES makefile tag
- Fixed screen whiteouts not looking very smooth in GBC mode (like when entering the 'mon status screen)
- Fixed a bug from the vanilla game where boulder dust clouds do not show up well when pushing downwards
- Fixed a bug from the vanilla game where random NPC walk delay can underflow to 255 ticks
- Cannot surf from the party menu if a NPC is in front of the player (entering or exiting surf)
- Player now faces up instead of left when stopped in the route 8 guard house
- Fixed a graphical error when Bide unleashes energy against a 'mon that is not being displayed
- The player can now select a move even if frozen, and this fixes a PP underflow and link desync glitch
- Changed border block in cerulean city to field to make it consistent with route 5
- Fixed reading the route 16 sign from the other side on route 17 
- Fixed an oversight to make it so 648 stat exp / lvl function maxes out at lvl 100
- Gamma shader is now 23% faster thanks to optimizations by easyaspi314
- The jingle for finding a hidden item will no longer be skipped during an audio fadeout
- Added missing dungeon maps to battle transition functions
- Fixed using a ledge to land on a NPC
- The party heal function now detects glitch moves and loads 0 PP for them
- Exit won't block you when warped to Fuji's house from Pokemon Tower
- Closed 255 clone pokemon glitch and reduced saving delay to 15 frames
- Wavy line animation (psychic/psywave/night shade) now scrolls the top three screen lines (by easyaspi314)
- Fixed glitchy trainer card transition screens on GB-DMG
- Made many TextIDs close when pressing A instead of releasing A
- Binoculars can no longer pause the overworld by holding A from the wrong side
- Applied the pokeyellow fix for in-game trade evolutions
- Can no longer get blocked at the cinnabar gym door
- Tweaked the fly menu to be more responsive and snappy
- Restored unused text in the vermilion gym puzzle for finding the 2nd switch
- Re-fixed the celadon vending machine code
- Accounted for underflow with switch-out messages
- More fixes for AI switching
- AI switch scoring applies an extra penalty for possibly switching a pokemon into a super-effective move
- Made adjustment to EXP All message
- Added an error trap to _Divide function for divide-by-zero calls
- Can no longer change facing while pushing a boulder
- Fixed ball toss sfx not resetting the pitch envelope settings
- Downward-moving sprites now get hidden behind text boxes
- NPC walking animation now updates during player movement
- Fixed hidden coins not giving the correct amount
- Fixed NPCs treating the last visible screen column/row as off-screen
- Slot machine no longer copies too much tile data
- Added protection against oak's lab music cutting a channel off
- Holding B in zero delay text mode will not revert the text to FAST speed
- Major cleanup of options constants
- Decoupled the harder difficulty to its own option bit
  - Pressing RIGHT while the cursor is in the BATTLE STYLE box will toggle the feature on/off
  - Contrasting this, pressing LEFT will let you select a battle style without toggling difficulty
- Fixed a minor issue where the first pokemon an opponent sends out can't be switched
- Added the mist stone custom item  
- Fixed a graphical bug on the naming screen that apears on cheapo flash carts
- RemoveItemByID is now able to remove items from the backup bag space
- TM/HM name list fixed so it can be in any bank
- Withdrawing or depositing a key item from/to the player's PC will default its quantity to 1
- Fixed extra options not getting initialized correctly
- Unused beedrill trade has been restored and placed on Route 22
- A new NPC is in the north-south underground path for post-game mirror matches

v1.23.10  
- re-adjusted trainer randomization so that their pokemon evolve a few levels later than normal
- trainer randomization will not allow the stronger unevolved pokemon below level 30
- auto-evolution function now handles eevee
- Ai layer 3 will slightly discourage a move 25% of the time if it hits neutral with no STAB
  - Wherein a special move is being used on a 'mon with greater attack than special stat
  - Wherein a physical move is being used on a 'mon with greater special than attack stat
- The proper forget-move poof sfx plays during battle
- Repels can no longer waste the mew encounter
- Fixed A-button input priority on the left side of the scrolling pokedex list
- Original flashing move animations from Red-JP and Green are tethered to the (unused) _JPFLASHING makefile tag
- Fixed bug in low HP alarm: Some sfx no longer get cut off when the player is at low HP
- Item evolutions having a level requirement is now supported
- Trade evolutions no longer evolve at level 45
- Trade evolutions now alternately evolve with a stone at a certain level with some new hinting NPC text
  - Kadabra
    - Use a moon stone at level 35
    - Hinted at by a NPC in the Pewter Museum that comments on the moon stone
  - Haunter
    - Use a thunder stone at level 35
    - Hinted at by the Lavender Town NPC that asks if you believe in ghosts
  - Graveler
    - Use a fire stone at level 35
    - Hinted at by a NPC on Cinnabar Island that talks about the mansion
  - Machoke
    - Use a leaf stone at level 35
    - Hinted at by a house NPC in Pewter City that talks about trainers teaching pokemon
- Debug Damage Display: As a debugging cheat, damage values will be displayed in battle as the UI updates
  - Toggled on/off the same way as the softlock warp, but by using 'A' instead of 'B'
  - Zero damage is not displayed
  - Damage is not displayed if either pokemon has zero HP remaining
- Fixed text giving the wrong description of guard spec.
- Fixed woman on silph co 10F having a blank line in her text 
- Blue-JP has spaceworld-style back sprites for the master branch, and a corresponding _origback patch has been added

v1.23.11  
- Added max revives to post-game shop on celadon mart 3f
- Corrected and clarified the quiz text in the cinnabar gym
- Relocated one of the rocket grunts in celadon city, and he now sells bulk coins in the post-game
- Viridian gym statue will not spoil the gym leader's name reveal
- Added max revives to post-game shop on celadon mart 3f
- Cerulean mart sells escape rope per Yellow version
- Fuschia mart sells hyper potions per Yellow version
- Added hidden potion on route 22
- Additional hidden potion in viridian city
- Added two hidden repels to pewter city
- Added a hidden great ball and pokedoll on route 6
- Added hidden max revive on route 11
- Added hidden ultra ball on route 8
- Added a hidden max revive and hyper potion in celadon city
- Added a hidden moon stone and nugget in diglett's cave
- Fixed double-edge animation being off-center for the enemy pokemon
- Fixed increment bug in CheckForTilePairCollisions
- A new drink stand on the route 19 beach sells vending machine drinks
- Fixed an issue where pressing a button on a menu while holding A is treated as an A-press
- Holding start or select will no longer print strange HP numbers when not on the status screen
- Removed restore sfx from the AI x-accuracy item
- Added the restore sfx to all AI hp-recovery items
- The enemy trainer's HUD is now updated after it uses a healing item
- The project now compiles with RGBDS 0.6.0 and has a script to verify the compiler version
- AI layer 3: There is a 79.68% chance per damaging move that the AI is blind to a player switching
  - Prevents situations where AI will always pick the ideal move against a switch-in
  - 'Blind' in this case means the AI will act as if the move being considered has neutral effectiveness
  - The AI might still favor a STAB move or a move that works better with its own stats


v1.23.12  
- Clarified the text for the super repel on 2F of the celadon dept store
- Readjusted enemy stat exp accumulation in hard mode
- Removed reduntant lines in CriticalHitTest
- Fixed trainer escape glitch via blacking out from a wild battle
- Hard mode no longer gives an exp bonus
- Fixed inaccurate text when getting the rock slide TM
- Fixed an issue where the counter for the Disable effect had the wrong distribution if the target was slower
- Restored the saucy innuendo for the Nugget Bridge dialogue in the jp builds
- Restored the religious text in the Pewter museum in the jp builds
- Updating a save to a new hack version now checks to see if the elite-4 were already defeated
- Fixed problem with the menu selection byte changing if opponent switches first (affects mimic and others)
- If Transform copies an opponent's Transform move, and the the PP of that move is < 6, it will copy that move's instantaneous PP less 1.
- Fixed a problem where multi-hit moves could overflow the damage effectiveness multiplier
- Fixed *thud* sfx playing when exiting via a warp tile
- Fixed a wall in cerulean cave level 3 that violated the mapping rules so was walkable
- Decreased time to encounter missingno by an exponential amount
- Fixed a scripting error on route 20
- AI layer 3: The enemy is blind to the player type if considering a poisoning effect move and the payer just switched
- AI layer 3: There is a 90.625% chance per damaging move that AI is blind to player type after player switches
- AI layer 1: If the player used and item or switched, AI is blind to the player's sleep counter when considering dream eater
- When using the old rod, press and hold B within about 1 second to always hook a magikarp
- Defeat Lance with a Dragonite on your top spot and it will be allowed to learn Fly
- Restored the gray pokemon coloring used in red/blue/green versions if using red/blue/green-style front sprites.


v1.23.13  
- Made the speed of japanese flashing animations more accurate to the original
- Removal of the limits on vitamins in the post-game now only applies to pokemon lvl > 30
- Mist stone is restricted to pokemon over lvl 30
- Adjusted the level-up moves of starmie, cloyster, poliwrath, and exeggcutor for legality with gen-2 time-capsule
- Fixed certain text sfx not playing when using zero-delay text
- HP-UP item now preserves your HP ratio
- Meet Trainer jingle should not play before loading into the gym leader battle music
- Systems that generate above-average DVs now use a statistical bias instead of using 9,8,8,8 minimum
- Enemy trainer level scaling biases the levels upwards for determining if a pokemon should be evolved
- Added Vanilla Options Reset
- Non-link battles in hard mode use the Stadium 1 formulas for critical hit probability
- Strength hotkey requires facing a boulder to activate
- Adjustements to how trainers use healing items
  - Lance now has 2 hyper potions per pokemon like the rest of the elite 4
  - The Rival battles from the SS Anne through Pokemon Tower use super potions
  - The Rival battles after Pokemon Tower and up through Route 22 2nd-round use hyper potions
  - The Champion can use Full Heals in response to a status effect with a 25% chance
  - All trainers that use any kind of potion now use it with a 50% chance if their HP is low enough
    - Gym Leaders and mid-game Rival: below 1/5th total
    - Elite-4 and Champion: below 1/3th total
- Trapping Move Clause
  - A counter tracks if the player or the opponent use trapping moves like Wrap multiple times in a row 
  - The counter increments only if a trapping effect move is selected to be used and it does not miss
  - After the counter has incremented to 2, 
    - selecting a trapping effect move additional times will make the move to go 2nd in the round 
    - this is the same priority as the move Counter
  - The counter only gets reset by switching or using a move that does not have the trapping effect 
  - Reseting the counter will restore normal priority to trapping effect moves.


v1.23.14  
- You can now get Oak's pokeballs even if you evolve your starter
- Oak's pokeballs will be upgraded to great balls if you beat the route 22 rival in hard mode
- If trainer scaling is on, you do not need to beat the 1st route 22 rival solo to get oak's pokeballs
- Fixed the white flash on screen transitions when playing on GBC
- Improved the tile block replacement function (improves cinnabar gym lag)
- Minor tweaks to saving/loading code
- Adjusted intro and title screen and palettes slightly in JP red & green for accuracy


v1.23.15  
- On battle slide-in, fixed the bottom window disappearing for 1 frame when playing on a DMG gameboy
- Undo the fix for disabling the LCD during LoadMapData since it creates about 250ms of lag
- Added a sfx and symbol for the color correction
- DelayFrame now manualy calls VBlank if it runs while the LCD is disabled
- White 1-frame flash on battle load (affecting DMG and GBC modes) as been removed
- White 1-frame flash on map load (affecting DMG and GBC modes) as been removed
- In hard mode, wild pokemon DVs get 1 re-roll each if less than 4, biasing them upwards a little bit
- Implemented the old Down+B urban legend for pokeballs as a cheat code
  - The timing is different. You have to hold Down+B before the "[PLAYER] used [ITEM]" text finishes printing.
  - If successful, the ball tossed will be twice as effective as normal
- Fixed garbage tiles display for 1 frame after a battle on the DMG
- The silhouette effect at the start of battle now displays when playing on a DMG gameboy
- Fixed the tiles in Mt. Moon floor 3 that prevent encounters
- Fixed picking a fossil causing all trainers on Mt. Moon floor 3 to lose line of sight

	
*Not in current patch*	
- Fixed an underflow issue which caused trainers above the player to not see beyond 3 spaces downward
- Fixed the pokeflute posting the wrong message in wild pokemon battles
- If a zero-value random seed is detected, a new random seed gets generated using the original DIV register method 
- Fixed some debugging features
- Press and hold A+SELECT at the title screen to print the current RNG seed at the main menu
- Fixed a bug where HP bar animation can print the wrong tile for 1 frame


#Bugfixes
-----------

- Battle engine fixes
  - PP usage is now tracked for both wild and AI trainer pokemon
  - Moves no longer have a default 1/256 chance to miss
  - Fixed freeze that occurs in defense stat scaling (def < 4 glitch)
  - Enemy ai ignores type effectiveness for moves that have zero power
    - prevents things like spamming agility against poison pkmn
  - Enemy ai ignores super-effectiveness for moves that do static amounts of damage
  - Fixed skipping move-learn on level-up glitch. 
    - when gaining multiple levels at a time, each in-between level is incrementally checked for moves learned
    - this prevents a pkmn from skipping learnable moves if gaining multiple levels in battle
    - also does this when evolving via level-up for the new evolution's movelist
  - Burn & Paralyze stat penalties are now properly applied after Speed & Attack stats get updated/recalculated
  - Badge stat-ups don't get stacked anymore
  - The function that applies badge stat-ups now selectively boosts the correct stat when called during a stat-up/down effect
  - If player is frozen, the hyperbeam recharge bit is now cleared
    - now matches how enemy mon's recharge bit is cleared upon being frozen
    - this prevents getting stuck in a loop unable to do anything on your turn
  - Blaine will not use a healing item at full HP
  - The BIRD type has been reinstated and renamed to TYPELESS. It acts as a universally neutral type (particularly for Struggle)
  - AI trainers have priority on switching or using an item
  - AI type effectiveness function now takes type 1 and 2 into account together 
    - Before AI would only look at the type it encountered first in a list search
    - AI will now treat a move as neutral if type 1 makes it supereffective but type 2 makes it not effective
  - Stat changes from burn and paralyze are applied when the ai sends out a pkmn with those conditions
  - AI routine #2 (prioritize buffing or use a status move) now activates on the 1st turn after sendout instead of the 2nd
  - New custom function for undoing the stat changes of burn and paralysis
    - undoing paralysis is accurate to within 0 to -3 points
    - undoing burn is accurate to within 0 to -1 point
  - PP-up uses are disregarded when determining to use STRUGGLE if one or more moves are disabled
  - AI will not do actions during Rage or when recharging
  - Fixed wrong crit damage for lvl > 127
  - Made adjustments to critical hit damage
    - Damage factor is now 2*(2*level)/5 + 4 instead of 2*(2*level)/5 + 2 to simplify some algebra
    - If non-crit damage would be >= crit damage, the regular modified stat values are applied instead
  - The player can now select a move even if frozen, and this fixes a PP underflow and link desync glitch
  - Accounted for underflow with switch-out messages


- Move fixes
  - Transform-related fixes:
      - Move slots cannot be rearranged when transformed (prevents acquiring glitch moves)
      - Fixing Transformation loops
        - If Transform copies an opponent's Transform move, 
	- and the the PP of that move is < 6, 
	  - it will copy that move's instantaneous PP less 1.
	  - This limits the PP of using transform repeatedly between two pokemon
      - Enemy DVs can no longer be manipulated by having it use transform multiple times
	  - Fixed a conflict where transforming while disabled can leave the new moves disabled
	  - Fixed transformed 'mons reseting their moves when learning a level-up move
	  - Fixed a typo so now transformed 'mons retain their original palette
  - dire hit/focus energy now quadruples crit rate instead of quarters
  - sleep now normal-chance hits a pkmn recharging from hyperbeam, but has no effect if it's already status-effected
  - the fly/dig invulnerability bit is cleared when a pkmn hurts itself from confusion or is fully paralyzed
  - psywave damage is always min 1 be it an opponent or yourself (prevents desync)
  - Fixed Psywave underflow/overflow with levels of 0, 1, and above 170
  - Substitute-related fixes:
    - all hp drain moves (including dream eater and leech seed) miss against substitute
    - substitute will not work if it would bring you to exactly 0 hp
    - zero power moves that inflict stat-downs, sleep, or paralyze will not affect a substitute
    - the confusion side-effect of damaging moves is blocked by a substitute
    - recoil damage from jump kicks or hurting oneself in confusion is now applied to user's substitute
  - healing moves work with restoring exactly 255 or 511 hp 
  - light screen and reflect now have a cap of 999
  - Haze removing sleep/freeze will not prevent a multi-turn move from getting stuck (also fixes the sleep-trap glitch)
     - Fixed by allowing sleeping/frozen pkmn to use a move after haze restores them
     - on the plus size, haze now restores both opponent and user's status conditions as was intended in gen 1
  - Haze resets the enemy and player toxic counter
  - Rest now does the following:
     - clears the toxic bit and toxic counter
     - undoes the stat changes of burn and paralysis
  - fixed-damage move fixes (seismic toss, dragon rage, etc):
    - can no longer critically hit
    - obey type immunities
	- ignore effectiveness text & sfx
	- use 2 bytes for damage instead of 1
  - Struggle is now TYPELESS so that it can always neutrally damage something
  - Metronome & mirror move will not increment PP if the user is transformed
     - This prevents adding PP to hidden dummy moves that prevent a pkmn from going into Struggle
     - This also prevents Disable from freezing the game by targeting a dummy move
  - Mirror Move is checked against partial trapping moves in a link battle to prevent desync
  - Bide's accumulated damage bytes are now both set to zero on an enemy faint in order to prevent desync
  - Jump Kick moves now do the correct recoil damage on a miss
  - The effects of Leech Seed and Toxic no longer stack
  - Trapping effects only clear the hyperbeam recharge bit on a hit, preventing its automatic use on a miss
  - Trapping move PP can no longer underflow due to an opponent switching pkmn
  - Raging and Thrashing no longer suffers from accuracy degradation
  - Breaking a substitute does not nullify explosion/self-destruct, hyper beam recharge, or recoil damage
  - Hyper beam must recharge if it knocks out the opposing pkmn
  - Bugfixes involving Counter:
    - works against BIRD type, which is now typeless and assigned only to STRUGGLE
    - To prevent desync, pressing B to get out of the move selection menu zeros-out the ram location for selected move & move power
    - last damage dealt is zeroed in these cases (also fixes some issues with Bide):
	  - it's the start of the round without a trapping move active (fixes most issues since Counter always goes second)
	  - player/enemy pkmn is fully paralyzed or after hurting itself in confusion
    - Crash damage from jump kicks and pkmn hurting itself cannot be Countered
  - To prevent infinite loops, Rage ends after 2 to 3 turns (attack boosts are kept)
  - Non-link enemy mons now have PP, so always run checks for 0 PP during the disable effect
  - Fixed an issue with Disable's counter on slower 'mons and also corrected the statistical outcomes of the counter

  
- Graphical Fixes
  - Gym leader names have been restored on the trainer card
    - These were removed during localization as a simple and expedient solution
    - So this is more of a correction to the localization than a strict graphical error
  - Restored intro "Presents" for all builds as localizers did not need to do this for Nintendo of America
  - Glitched sprites can no longer cause a buffer overflow that corrupts the hall of fame
  - Returning from the status screen when an opponent is in substitute/minimize no longer glitches the graphics
  - PC graphic restored to celadon hotel
  - A tile in cinnabar mansion 3f is slightly modified to prevent getting permanently stuck
  - A tile in cerulean cave 1f adjusted so there isn't a walkable cliff tile
  - Fixed a wall in cerulean cave level 3 that violated the mapping rules so was walkable
  - Added ledge to route 25 to prevent softlock
  - After defeating the cerulean burglar rocket, the guard itself always moves to prevent getting stuck in the front door
  - No more ABCD glitched sprites when using teleport without a super gameboy
  - The transitional frame when turning 180 degrees now shows correctly
  - The lower right corner tile of the mon back pic is no longer blanked
  - Amazing man can no longer be triggered by text boxes or the start menu (via a code tweak from Yellow-version)
  - The rival encounters on route 22 now show an exclamation bubble that never showed up originally
  - Erika uses her pic from yellow version which alters her funerary clothes to a proper kimono
  - Fixed a scrolling text artifact in the credits when running in GBC-mode
  - Fixed amazing man glitch when triggered by a hidden object
  - Fixed amazing man glitch in the route 16 gate
  - Fixed tower ghost pic not loading after exiting status screen
  - Fixed bumping into invisible shrub
  - Fixed holding left to force past the cycling road guards
  - Fixed being able to leave the safari zone without clearing the event
  - Minor tweak to Pallet Town object data for Prof Oak
  - Minor tweaks to the Rival's object data in various maps
  - Fixed menu not clearing if A is held after saving
  - Fixed a missed increment that makes a map's 15th object not update its facing properly
  - Adjusted two spin-stop tiles in Viridian Gym
  - Made Agility's animation more apparent
  - Changed border block on route 16 to water to make it consistent with route 17
  - Changed border block in cerulean city to field to make it consistent with route 5
  - Fixed screen tearing in battle when player or 'mon slides off the screen
  - Fixed a bug from the vanilla game where boulder dust clouds do not show up well when pushing downwards
  - Fixed a bug from the vanilla game where random NPC walk delay can underflow to 255 ticks
  - Minor bugfix for CollisionCheckOnWater; no effect on gameplay
  - Fixed minor graphical glitch when surfing from the menu
  - Cannot surf from the party menu if a NPC is in front of the player (entering or exiting surf)
  - Player now faces up instead of left when stopped in the route 8 guard house
  - Fixed a graphical error when Bide unleashes energy against a 'mon that is not being displayed
  - Fixed minor graphical glitch when surfing from the menu
  - Added missing dungeon maps to battle transition functions
  - Wavy line animation (psychic/psywave/night shade) now scrolls the top three screen lines
  - Fixed glitchy trainer card transition screens on GB-DMG
  - Made many TextIDs close when pressing A instead of releasing A
  - Binoculars can no longer pause the overworld by holding A from the wrong side
  - Can no longer change facing while pushing a boulder
  - Downward-moving sprites now get hidden behind text boxes
  - NPC walking animation now updates during player movement
  - Fixed a graphical bug on the naming screen that apears on cheapo flash carts
  - Original flashing move animations from Red-JP and Green are tethered to the (unused) _JPFLASHING makefile tag  
  - The enemy trainer's HUD is now updated after it uses a healing item
  - Added optimizations to how OAM data is prepared so that overworld sprites wobble less
  - On battle slide-in, fixed the 1-frame flicker when playing on a DMG gameboy
  - White 1-frame flash on battle load (affecting DMG and GBC modes) as been removed
  - White 1-frame flash on map load (affecting DMG and GBC modes) as been removed
  - Fixed garbage tiles display for 1 frame after a battle on the DMG
  - Fixed a bug where HP bar animation can print the wrong tile for 1 frame


- Item Fixes  
  - Great ball has a ball factor of 12 now
  - Stone evolutions cannot be triggered via level-up anymore
  - Ether and elixer now account for PP-ups used when determining if move is at full PP
  - PP-restoring items no longer affect transformed moves and only restore the original moves
  - EXP ALL fixes
    - should now dispense the correct exp if multiple pokemon take place in a battle
	- no longer counts fainted pokemon when dividing exp
	- handles exp correctly when all your battle participants are knocked out
  - Fixed a bug where itemfinder can't locate objects with a zero x or y coord
  - Surfboard bugfixes:
    - cannot use the surfboard if being forced to ride the bicycle
    - no longer freezes the game when using it from the item menu to get back on land
  - The Full Heal used by the AI now undoes brn/par stat changes
  - Condition healing items (including using Full Restore at max hp) no longer reset all stats
    - Burn heal undoes the attack stat changes
    - Paralyze heal undoes the speed stat changes
    - Full restore at max hp undoes the stat changes of brn/par
  - Full Restore when used in battle to heal HP now undoes the stat changes of brn/par
  - Pokedoll is disallowed during ghost marowak battle
  - Encountering Missingno will not give 128 of the item in the sixth bag slot
  - Fixed the pokeflute posting the wrong message in wild pokemon battles
  

- Audio fixes
  - Audio engine has been back-ported from Yellow version
    - Fixes some channel conflicts between cries and the low-health alarm
    - Fixes some audio hiccups with Yellow's color palettes on the GBC
    - Press SELECT on the option menu to change the audio mixing option
  - Fuschia gym plays the correct sfx when getting the TM from Koga
  - Vermilion gym plays the correct sfx when getting the TM from Surge
  - Restored sfx for getting a badge
    - A sfx is supposed to play when getting a badge, but not for all gym leaders and the sfx used is inconsistent
	- Looks like the idea was dropped in development due to issues with having separate audio banks
	- However, there is a unique unused sfx in the battle audio bank that signifies getting some kind of important item
	- This is likely what was going to be used for getting a badge at some point, and it has been restored
  - Bike music stops playing now when going down a hole
  - The proper forget-move poof sfx plays during battle
  - Fixed a bug having to do with rare instances of bending the audio pitch
  - Victory music won't play if a wild 'mon faints but the player has no 'mons remaining; it's a blackout
  - The jingle for finding a hidden item will no longer be skipped during an audio fadeout
  - Fixed ball toss sfx not resetting the pitch envelope settings
  - Added protection against oak's lab music cutting a channel off
  - Removed restore sfx from the AI x-accuracy item
  - Added the restore sfx to all AI hp-recovery items
  - Fixed *thud* sfx playing when exiting via a warp tile
  - Fixed certain text sfx not playing when using zero-delay text
  - Meet Trainer jingle should not play before loading into the gym leader battle music
  

- Misc. fixes
  - Cinnabar/seafoam islands coast glitch fixed (no more missingo or artificially loading pokemon data)
  - Catching a transformed pokemon no longer defaults to catching a ditto
  - Vending machine now checks for the correct amount of money
  - Vermilion Gym switch puzzle fixes
    - Prevented byte overflow when determining the trash can with 2nd switch in vermilion gym
    - The position of both switches in Vermilion Gym are now determined at the same time
    - The switches in Vermilion Gym can now be discovered independently from one another
  - Hidden nugget in safari entrance now obtainable
  - Slot machine reel bug fixed
  - Fixed oversights in reel functionality to better match Gamfreak's intent
  - The lift key in the rocket hideout drops during the end of battle text like in Yellow-version
  - An unused bit is now used to determine the ghost marowak battle
  - Can't use surf/teleport/escape rope to escape from trainer encounters
  - Fixed trainer escape glitch via blacking out from a wild battle
  - Can't fish or surf in the bases of statues
  - Seafoam islands fast current applied to the right steps on floor B3
  - Each of the two boulder puzzles in seafoam islands will fully reset until completed
  - The boulder switches never reset while inside victory road and they will always reset upon leaving
  - While inside victory road, boulders placed on switches will stay there between floor transitions
  - The formula functions for exp now have underflow protection.
  - General RNG improved to use the xor-shift method (fast and allows for all possible DVs naturally)
    - Poor emulators and flash carts with loader GUIs often clear the RAM resulting in a random seed of zero
	- If this problem is detected, an attempt is made to generate a random seed using the original DIV register method
  - Cannot bypass Brock's gym via the start menu
  - Fixed bugged npc movement constraints
  - Fixed the instant-text glitch that can happen in the bike shop
  - Fixed using escape rope in bill's house and the fan club
  - Added nop after halt commands (safety prevention for a rare processor bug)
  - Streamlined how the ghost marowak battle is triggered (now allows for non-ghost marowaks in pokemon tower)
  - Fixed a coordinate typo in pokemon tower left by gamefreak
  - Fixed an issue with the silph co 11f elevator doors
  - Can no longer walk up to 4 steps with a fainted team
  - Water warps in seafoam island 4 & 5 are now scripted movement
  - Fixed a bug in the GetName: function that treated lists over 195 entries as item lists
  - You can Fly and Teleport out of maps with the forest tileset
  - Fixed a grass tile in the Forest tileset not counting for encouner generation
  - Fixed input priority on menus
  - Fixed A-button input priority on the left side of the scrolling pokedex list
  - Fixed an issue where pressing a button on a menu while holding A is treated as an A-press
  - RAM adress D732 now gets cleared upon starting a new game
  - Cannot use poison to black yourself out of the cable club because entering the club now heals your party
  - Cannot use poison to black yourself out of the safari zone because the safari minigame now stops poison damage
  - Cannot perform the 99-stack glitch anymore
  - Fixed an offset bug with the lucky game corner machine
  - Minor bugfix for CollisionCheckOnWater; no effect on gameplay
  - Fixed reading the route 16 sign from the other side on route 17 
  - Fixed using a ledge to land on a NPC
  - The party heal function now detects glitch moves and loads 0 PP for them
  - Exit won't block you when warped to Fuji's house from Pokemon Tower
  - Closed 255 clone pokemon glitch
  - Applied the pokeyellow fix for in-game trade evolutions
  - Can no longer get blocked at the cinnabar gym door
  - Fixed hidden coins not giving the correct amount
  - Fixed NPCs treating the last visible screen column/row as off-screen
  - Slot machine no longer copies too much tile data
  - Fixed increment bug in CheckForTilePairCollisions
  - You can now get Oak's pokeballs even if you evolve your starter
  - Fixed the tiles in Mt. Moon floor 3 that prevent encounters
  - Fixed picking a fossil causing all trainers on Mt. Moon floor 3 to lose line of sight
  - Fixed an underflow issue which caused trainers above the player to not see beyond 3 spaces downward
 
 
#Tweaks
-----------

- Added NPC text to hint at how to get the trade evolutions
  - NPC in the Pewter Museum that comments on the moon stone
  - Lavender Town NPC that asks if you believe in ghosts
  - NPC on Cinnabar Island that talks about the mansion
  - House NPC in Pewter City that talks about trainers teaching pokemon

- Fixed mistakes in the game text
  - Attacks reduced to zero damage now say the target is unaffected instead of missing
  - Man in cinnabar won't mention raichu evolving (also applies to the jynx trade in cerulean)
  - Koga correctly says soul badge increases speed
  - Lt. Surge correctly says thunder badge increases defense
  - Correct type effectiveness information & sfx should now be displayed when attacking dual-type pkmn
  - Viridian girl's notebook 2nd page revised for pkmn-catching effectiveness
  - Viridian blackboard BRN info corrected (BRN does not reduce speed)
  - Viridian Blackboard PAR info updated
  - Cerulean badge-house guy has updated text
  - Prof. oak's speech plays the correct Nidorino cry
  - Text for using a TM/HM now refers to the "machine" rather than just "TM"
  - Fixed daycare man capitalization
  - Fixed capitalization in safari zone entrance
  - Fixed the flipped text for a girl in Saffron and the letter she is writing
  - Fixed text overlap with Oak giving you pokeballs
  - Reactivated lost text that was meant to play when you lose to your rival
  - Fixed text giving the wrong description of guard spec.
  - Fixed woman on silph co 10F having a blank line in her text 
  - Viridian gym statue will not spoil the gym leader's name reveal
  - Fixed inaccurate text when getting the rock slide TM
- Made adjustments to the game text
  - When a pkmn is caught and fills the box, a reminder is printed that the box is full
  - PC has a text prompt to tell you if its full after depositing
  - Made cinnabar mansion notes more true to the original japanese text
  - TM 18 given an actual explanation 
  - New student in viridian school explains ohko moves
  - Exp.all now prints one message when splitting exp instead of for each party member
  - TMs and HMs now have their attacks (albeit abbreviated) appended to the item names
  - Removed the word "only" from NPC on Silph Co 5f who talks about trade evos
  - Text tweak to route 14 trainer with regards to forgetting HMs
  - Adjusted some of Giovanni's final lines for clarity
  - Clarified "chem" to mean grade in chemistry
  - Fixed pokemon category translation: "Rat" to "Mouse"
  - Fixed pokemon category translation: "Shellfish" to "Shell"
  - Fixed translation: Route 14 trainer's comment about the legendary birds
  - Restored unused text in the vermilion gym puzzle for finding the 2nd switch
  - Corrected and clarified the quiz text in the cinnabar gym
  - Clarified the text for the super repel on 2F of the celadon dept store

- Adjustments to moves  
  - Stat-down moves no longer have a 25% miss chance in AI matches
  - Moves that hit multiple times in a turn now calculate damage and critical hits for each individual attack
  - Trapping moves nerfed big time to prevent the new AI from cheesing them:
    - Switching out of a trapping move ends it immediately and wastes its user's turn (prevents PP underflow glitch too)
    - A 'poof' animation plays to signal the last turn of the trapping move
  - Ghost moves (i.e. just Lick) do 2x against psychic as was always intended
  - Pay Day upped to 5x multiplier of later generations
  - Changes to Bide
    - damage accumulation is done after taking a damaging hit instead of during turn execution (less room for glitches)
      - side effect: bide is buffed because multi-hit moves now add damage to bide for each of the 2 to 5 hits
    - changed to Typeless to play nicer with AI routine 3 (it ignores the type chart regardless)
  - Rest's sleep condition increased to 3 turns since attacking on wakeup is now allowed.
  - Acid armor's animation changed so that does not make its user disappear
  - Metronome now classified as a Typeless special damage move to play better with the AI
  - Type immunity prevents trapping moves from taking hold at all
  - Changes to Rage
    - Now only lasts 2 to 3 moves like Bide in order to prevent an infinite loop
    - As a tradeoff, attack boosts from rage are kept when it ends
  - Minor code correction to Twineedle to prevent future errors, but this has no effect on gameplay

- Adjustment to stat mods, conditions, and items
  - Sleep does not prevent choosing a move
  - Waking up from sleep does not waste the turn and the chosen move is used
    - The sleep counter's minimum value is increased by +1 to maintain accuracy of sleep moves
  - Badge stat-ups are now only applied in wild pokemon battles to give parity to enemy trainers (only in hard mode)
  - The effect of X-Accuracy is no longer applied to one-hit K.O. moves (it originally made them auto-hit)
  - Using X-Accuracy with a OHKO move now allows it to hit faster opponents
  - The limiter on vitamins is raised to a max of 62720 stat exp after the elite 4 have been beaten for 'mons with lvl > 30
  - Pkmn added to the player's party (either as a gift or in-game trade) have above-average DVs
  - Upped the power of safari balls
  - Escaping in the safari zone is now based on level instead of speed
  - In hard mode, X-stat items have double the effect
  - HP-UP item now preserves your HP ratio
  - Non-link battles in hard mode use the Stadium 1 formulas for critical hit probability
  
- Trainer ai routine #1 (recognition of stats, hp, and conditions) has been modified
  - using a move with a dream eater effect is heavily discouraged against non-sleeping opponents
  - using a move with a dream eater effect is slightly encouraged against a sleeping opponent
  - using a zero-power confusion effect move is heavily discouraged against confused opponents
  - moves that would miss against an active substitute are heavily discouraged
  - stat buff/debuffs are heavily discouraged if it would have no effect due to hitting the buff/debuff stage limit
  - heavily discourage double-using lightscreen, reflect, mist, substitute, focus energy, and leech seed
  - leech seed won't be used against grass pkmn
  - do not use moves that would be blocked by an active mist effect
  - rules for using healing moves:
    - heavily discourage healing if at max hp
	- slightly encourage healing if below 1/3 hp
	- slightly discourage healing if above 1/2 hp
  - heavily discourage using Counter against a non-applicable move
  - heavily discourage roar, teleport, & whirlwind
  - heavily discourage disable against a pkmn already disabled
  - Substitute discouraged if less that 1/4 hp remains
  - Will discourage using Haze if unstatus'd or has net-neutral or better stat mods
  - Discourages explosion moves in proportion to HP remaining
  - Will heavily discourage boosting defense against special, OHKO, or static-damaging attacks
  - AI layer changes that affect most 0-power moves (with only a few exceptions like heal effects)
    - now has a hard stop on using 0-power moves on consecutive turns with a few effect exceptions
    - heavily discourages 0-power moves if below 1/3 hp
  - Discourage exploding effects if faster than a player in fly/dig state
  - Randomly discourage usage of 2-turn moves when confused/paralyzed
  - 79.68% chance per status move that the AI is blind to a player switching or using an item
    - Prevents situations where AI will always re-status the player after the player switches or heals
    - An AI mon with three status moves will have about a 50% chance of ignoring item-use or switching
  - Discourage using fly/dig if faster than the player who is also picking fly/dig
  - If the player used and item or switched, AI is blind to the player's sleep counter when considering dream eater

- Trainer ai routine #3 (choosing effective moves) has been modified
  - It now heavily discourages moves that would have no effect due to type immunity
  - OHKO moves are heavily discouraged if the ai pkmn is slower than the player pkmn (they would never hit)
  - Static damage moves are randomly preferenced 25% of the time to spice things up
  - Thunder Wave is not used against immune types
  - Poisoning moves discouraged against poison types
  - Added some strategy to handle when the player uses fly/dig
  - Slightly preference regular effectiveness moves if STAB exists (25% chance per move)
  - Slightly discourage a move 25% of the time if it hits neutral with no STAB
    - Wherein a special move is being used on a 'mon with greater attack than special stat
    - Wherein a physical move is being used on a 'mon with greater special than attack stat
  - Slightly discourage a move 25% of the time if it hits neutral with no STAB
  - The enemy is blind to the player type if considering a poisoning effect move and the player just switched
  - 90.625% chance per damaging move that AI is blind to player type after player switches
    - Prevents situations where AI will always pick the ideal move against a switch-in
    - 'Blind' in this case means the AI will act as if the move being considered has neutral effectiveness
    - The AI might still favor a STAB move or a move that works better with its own stats

- Trainer ai routine #4 is no longer unused. It now does rudimentary trainer switching.
  - 25% chance to switch if active pkmn is below 1/3 HP and player also outspeeds AI
  - chance to switch based on power of incoming supereffective move
  - 12.5% chance to switch if a move is disabled
  - 12.5% chance to switch if afflicted with leech seed
  - 34% chance to switch if afflicted with toxic poison
  - 25% chance to switch if opponent is using a trapping move
  - 25% chance to switch if active pkmn is confused
  - on the lowest stat mod, 12.5% chance to switch per lowered stage
  - There is a chance for the AI to switch a sleeping pokemon based on the sleep counter
    - chance is 0% if counter <= 3
    - chance is 12.5% if counter > 3
  - Additionally, every pokemon in the enemy roster is scored 
    - based on various criteria to determine which mon gets sent out
	- score might dictate that the current mon is the best choice and abort switching
	- an enemy mon is flagged when sent out; non-volatile (except sleeping) status or low hp cannot initiate switching
	- enemy mon that is recalled back due to a super effective move is flagged; it is demerited from being switched-in
	- switch flags are all cleared when player sends out a new mon since the situation is now different
  - AI scoring for switching puts a heavier penalty on potentially switching in a bad type matchup
  - AI scoring imposes a very heavy penalty for potentially switching in pokemon with less than 1/4 HP
  - AI switch scoring now penalizes bad match-ups between player and enemy 'mon types
  - AI switch scoring applies an extra penalty for possibly switching a pokemon into a super-effective move
  
- Trainer ai routine #3 added to the following trainer classes
  - jr trainer M/F, engineer, rocker, juggler, tamer, birdkeeper, black belt, scientist, gentleman
  - bruno, brock, surge, blaine, sabrina, agatha, rival phase 1, chief
- Trainer ai routine #4 added to the following trainer classes
  -jr trainer M/F, pokemaniac, hiker, cueball, psychic, tamer, black belt, rocket, cooltrainer M/F, gentleman, channeler
  -all rival phases, all gym leaders, elite-4, prof.oak, chief
  
- Trainer stat DVs are now randomly generated to a degree (only in hard mode) to be above-average
- Trainer pkmn now have stat experience assigned to them that is scaled to their level (only in hard mode)
  - The stat experience total for a given level 'L' is SIGMA[n=6,L](12n+50)
  - No stat experience is given for level 5 and below.
  - Outside of hard mode, trainer pokemon have 0 stat experience per the vanilla games
- These are real DVs and statEXP values that utilize the existing enemy party_struct which is normally unused by trainer AI
- Trainer pkmn DVs are remembered between switching, and new ones won't be generated on every send-out
- Trainer AI battles now track which enemy pkmn have already been sent out, so it supports the new DVs and stat exp
- Special trainers, e4, and gym leaders are slightly adjusted in their item use
- Special trainers, e4, and gym leaders have slightly adjusted and buffed rosters for flavor and difficulty
- Many trainers have recieved slight roster adjustments so that almost all pokemon can be registered as seen
- Agatha & cooltrainers will not randomly switch since they now have ai routine 4
- Flags for dividing exp among active pokemon are now only reset after fainting an enemy pkmn
  - Originally these get reset every time the opponent send out a pkmn (even swithing)
  - Was never really noticed since most trainers never switch nor would have the opportunity
  - Changed based on user feedback since many trainers now try to switch
- Adjustements to how trainers use healing items
  - Lance now has 2 hyper potions per pokemon like the rest of the elite 4
  - The Rival battles from the SS Anne through Pokemon Tower use super potions
  - The Rival battles after Pokemon Tower and up through Route 22 2nd-round use hyper potions
  - The Champion can use Full Heals in response to a status effect with a 25% chance
  - All trainers that use any kind of potion now use it with a 50% chance if their HP is low enough
    - Gym Leaders and mid-game Rival: below 1/5th total
    - Elite-4 and Champion: below 1/3th total
  
- Adjustments to learnsets and base stats
  - Slight additions to explodo-mon movesets to play nicer with AI at higer levels
  - Pokemon have gained their TMs and Moves from yellow
  - Kadabra & Alakazam can access Kinesis via the move relearner
  - Raichu gains some attacks back via level
  - Arcanine gains some attacks back via level
  - Ninetails gains some attacks back via level
  - Poliwrath gains some attacks back via level
  - Cloyster gains some attacks back via level
  - Starmie gains some attacks back via level
  - Exeggcutor gains some attacks back via level
  - Vileplume gains some attacks back via level
  - Victreebel gains some attacks back via level
  - Clefable gains some attacks back via level
  - Wigglytuff gains some attacks back via level
  - Mewtwo can learn Swift by TM 
  - Kakuna and Metapod learn harden by level-up
  - Pikachu and Kadabra have their catch rates adjusted to yellow version
  - Butterfree and Beedrill have their prior evolutions' moves added to their level-0 move list
  - Clefable and Wigglytuff get some moves back via level-up
  - Diglett & Dugtrio can learn cut like in yellow version
  
- Engine changes just for developers
  - The trainer move engine has been backported from Yellow version; trainer movesets can now be fully customized
  - Improved exp calculation for developers who want a level cap between 101 and 255
    - EXP calculation routine now does math in 4 bytes instead of 3 bytes
	- Exp calculation result is still capped to 3 bytes regardless of level cap to prevent overflow
	- The byte cap on the exp result means that certain growth rates may have a level cap
	- For example, the "slow" growth rate is theorized to cap at level 237
  - Trainer battle prize money uses 3 bytes instead of 2, lifting the 9999 cap on winnings
  - Adjusted daycare to allow exp values over $500000
  - Allow up to 8 digits when displaying experience on the status screen
  - Pokemon can now learn more than 1 more per level
  - The 1.5x EXP boost function now has overflow protection
  - EXP Gained can now print up to five digits instead of four
  - The "<LF>" character mapping can be used as a line-feed
  - Added rom hack version tracking for save files
    - It's a single byte in the save file that gets incremented each version
    - If the save byte does not match, the player is automatically warped back to Pallet Town
    - Helps prevent crashes and glitches when updating an older save file
    - You will be given the choice to warp to Pallet Town if the rom hack version does not match
  - The function that shows the dex entry for starter pokemon is now more robust
    - It now works for any pokemon (like if the starters are changed or randomized)
	- It keeps a backup of the pokedex-owned flags instead of erasing them
	- Removed the unused Ivysaur flag
  - Increased the maximum game clock to 32767 hours
  - Reduced saving delay to 15 frames
  - Tweaked the fly menu to be more responsive and snappy
  - Added an error trap to _Divide function for divide-by-zero calls
  - Withdrawing or depositing a key item from/to the player's PC will default its quantity to 1
  - Item evolutions having a level requirement is now supported
  - DelayFrame now manualy calls VBlank if it runs while the LCD is disabled

- Changes to fishing
  - All rods have an expanded level range
  - Old rod can fish up two kinds of pokemon (depending on the current map constant value)
    - Magikarp or Goldeen
    - Magikarp or Poliwag 
  - When using the old rod, press and hold B within about 1 second to always hook a magikarp
  - Good rod can fish up three or four kinds of pokemon (depending on the current map constant value)
    - Poliwag, Horsea, Krabby
    - Poliwag, Krabby, Goldeen, Psyduck
    - Goldeen, Psyduck, Shellder
    - Goldeen, Shellder, Horsea, Tentacool
  - The Route 12 Fishing Guru is now visitable upon first reaching Lavender Town
  - Swapped location of Good and Super Rod

- Changes to the daycare
  - The daycare lets you select moves to forget (if any) upon retreiving your pokemon
  - Retrieving a daycare pokemon that could have evolved via level will trigger evolution and learn any missed-out moves
  - The daycare will support two evolutions back-to-back
  - The daycare experience gain has been recalibrated
    - It no longer gives 1 exp per step
    - Instead, it falsifies the act of farming wild encounters against a pokemon with a base exp value of 56
    - The falsified encounter starts at level 5, and it increases 5 more levels per badge obtained
    - With 8 badges, using the daycare is essentially a faster way of farming level 45 basic pokemon
    - The downside of not gaining statEXP in the daycare still remains as a tradeoff
  - Added a PC to the daycare
  - Daycare allows HM moves on entered pokemon

- A regular New Game will default the battle style to SET and hard mode
- Starting a New Game while in GBC-mode will default 60FPS mode to ON
- Yes/No prompt for flute use has been added to blocking snorlax
- Game corner prize costs re-balanced
- Slightly increased slot odds
- Slot machine coin counter runs twice as fast
- There are four lucky slot machines instead of one
- Interaction of slot reel modes tweaked for better gameplay
- Bushes moved around so Erika can be battled without CUT
- The bush blocking the Vermilion gym has been replaced with a blocking pkmn that goes away after the ss anne leaves
- Gym leaders and elite 4 have their rosters, levels, & movesets slightly tweaked for gradual difficulty
- Blaine has a touched-up battle sprite so he doesn't look like an alien
  - Snagged this off reddit, but original artist unknown (let me know if this is yours)
- The elite 4 now use the gym battle music rather than the standard trainer music
- The juggler rosters, especially in fuchsia gym, have been slightly altered for flavor
- Just for fun, the last juggler in the fuchsia gym is replaced with a cameo of Janine
  - Though at this point she's still just a cooltrainer and doesn't have a unique battle sprite
- The L: block doesn't disappear when level hits three digits
- Greatly increased the speed and performance of spin tiles  
- Amber and fossils are now non-key items
- Low HP alarm only plays three times then turns itself off
- You can now cut the grass in the plateau tileset
- Gave a couple TM moves to the cerulean rival's abra
- Initiating the Pokemon Tower rival battle will deactivate the following skippable rival battles
  - The Cerulean encounter
  - The SS Anne encounter

  
#Additions
-----------

#Difficulty and scalable trainers
- There is an option to scale trainer rosters to the level of your strongest roster pkmn
  - Talk to the right-side aide in Oak's lab to toggle on/off
  - Enemy pkmn will evolve by level if applicable
    - Pokemon that evolve below level 30 will evolve at 4/3x the original level 
    - Pokemon that evolve >= level 30 will evolve at 8/7x the original level 
  - Gym leaders and the E4 scale slightly higher than normal trainers
  - If trainer scaling is on, you do not need to beat the 1st route 22 rival solo to get oak's pokeballs
- Playing on hard mode provides increased difficulty
  - Pressing RIGHT while the cursor is in the BATTLE STYLE box will toggle the feature on/off
  - Contrasting this, pressing LEFT will let you select a battle style without toggling difficulty
  - Enemy trainer pokemon are assigned level-appropriate stat exp
  - Enemy trainer pokemon have randomized DVs that are above-average
  - Wild pokemon DVs get 1 re-roll each if less than 4, biasing them upwards a little bit
  - Badge-granted stat boosts are disabled in trainer battles
  - X-stat items have double the effect like in more recent generations
  - Revive items cannot be used in battles
  - Mewtwo will prevent you from using a master ball on it and use AI to choose moves
  - Non-link battles in hard mode use the Stadium 1 formulas for critical hit probability
  - Warning: The difficulty will be compounded if both trainer scaling and hard mode are active
  - Oak's pokeballs will be upgraded to great balls if you beat the route 22 rival in hard mode
- Added the Clause Brothers to Viridian City
  - They toggle enforcement of the item, sleep, and/or freeze clauses
  - The clauses apply to the player and AI equally, and only apply during non-link trainer battles
  - Sleep and freeze clauses work like they do in Pokemon Stadium
- Added a fourth brother for the Trapping Move Clause
  - A counter tracks if the player or the opponent use trapping moves like Wrap multiple times in a row 
  - The counter increments only if a trapping effect move is selected to be used and it does not miss
  - After the counter has incremented to 2, 
    - selecting a trapping effect move additional times will make the move to go 2nd in the round 
    - this is the same priority as the move Counter
  - The counter only gets reset by switching or using a move that does not have the trapping effect 
  - Reseting the counter will restore normal priority to trapping effect moves.
- There is now an obedience level-cap that can be toggled in the options menu
  - With the cursor in the BATTLE STYLE section, press A to toggle it on and off
  - While active, the current maximum obedience level will display in the options menu
  - All pokemon, not just trades, will start to disobey if over the displayed level cap
  - The cap will change based on which badge you have
  - Not recommended for use with trainer scaling since you might gain too many levels too quickly
  - Best to turn this off in the post-game as it's really for the gym challenge and elite-4


#Quick Keys / Options / Menu-Related
- Press SELECT on the option screen to change the audio type
- Added built-in gamma shader for backlit LCD screens (press SELECT at the copyright screen)
  - Gamma shader defaults ON if the destination code in the rom header is set to 00 (JP)
  - Pressing SELECT at the copyright info now switches the shader from its default state
  - The default state of the gamma shader can be changed with any gameboy rom header editor
  - Alternately, remove the 'j' in 'cjsv' in the Makefile to compile with a JP destination code
- Added an option to make the overworld run in 60fps
  - Place the cursor over CANCEL in the options screen and toggle by pressing left or right
  - This feature is more of a proof-of-concept and is still kinda rusty
  - Takes advantage of double-speed CPU mode when played as a GBC game
- Text with zero frame delay can be toggled in the options menu; press LEFT with the cursor on FAST
- Softlock Warp 
  - Instantly teleport back to your mom's house if you get stuck or are unable to move after updating to a new patch
  - Sets money to at least 1000 if you have less than that
  - Instructions to perform:
    - go to the start menu and put the cursor on OPTION
    - press and hold DOWN on the d-pad (the cursor will now be on EXIT)
    - while continuing to hold DOWN, press and hold SELECT
    - while continuing to hold those two buttons, press B
    - the start menu should close and you will warp back to your mom's house
- Vanilla Options Reset 
  - Deactivates all special options (such as in preparation to update to a new patch)
  - Intructions to perform:
    - go to the start menu and put the cursor on the top option (usually POKEDEX)
    - press and hold UP on the d-pad (the cursor will now be on EXIT)
    - while continuing to hold UP, press and hold SELECT
    - while continuing to hold those two buttons, press B
    - the start menu should close and you will hear a jingle confirming that the option reset worked
- Debug Damage Display: As a debugging cheat, damage values will be displayed in battle as the UI updates
  - Toggled on/off the same way as the softlock warp, but by using 'A' instead of 'B'
  - Zero damage is not displayed
  - Damage is not displayed if either pokemon has zero HP remaining
- Context-sensitive SELECT button for using HMs (must have the correct badge and the move on one of your pkmn)
  - press SELECT against a shore to surf
  - press SELECT when facing a shrub or grass tile to use cut
  - press SELECT in a dark area to light it with flash
  - press SELECT while facing a boulder to activate strength
- Press and hold A then press SELECT to automatically get on/off your bike or use the best rod in your inventory
- You can now check DVs or stat exp by holding down a button and entering the status screen
  - hold SELECT for stat exp
  - hold START for DVs
- In-battle way to check if enemy pokemon is owned in the pokedex
  - On the main battle menu, place the cursor over an option in the left column
  - Press the SELECT button
  - The enemy pokemon will play its cry if registered as owned
- Added ability to forfeit trainer battles by choosing RUN in battle while holding SELECT
- The bag now supports an additional item list for an extra 20 slots of space
  - Press START on the bag menu to hot-swap the item list that populates the active bag
    - Also works in battle
    - Also works when depositing items in the PC
  - The game's systems will generally detect items in the non-active bag space
    - For example, you can enter the Cinnabar Gym even if the Secret Key is in the non-active bag space
  - Certain unique systems may only recognize the active bag's item list
    - For example, the Pokemon Stadium games detect only the bag list that was active when last saved
- The player's party 'mons now have temporary field move slots for HM moves
  - Each party 'mon has 1 slot separate from its regular move list
  - A field move in this slot can be used in the overworld as normal
  - You will be asked about filling the slot when teaching a field move out of battle
  - You cannot overwrite a slot with a field move already in it
  - A slot is cleared when its 'mon leaves the party (such as being put in the PC)
  - In the case of a 'mon with 4 regular field moves:
    - The slotted temporary move cannot be menu-selected
    - The slotted temporary move, if it's a HM move, can be used via quick-key
  - Teaching a TM as a field move will not consume the TM

 
#Graphics
- GBC color palettes have been back-ported from Yellow-version.
- Additional GBC color additions
  - Scrolling mons on the title screen have their own palettes loaded on the GBC.
  - In the blue version intro, jigglypuff has it's own palette loaded on the GBC.
  - Oak-speech nidorino has its color palette on the GBC.
  - When playing in GBC-mode, move animations are colored based on their type
  - In GBC-mode, when a pokemon is caught, the resting ball now has a defined color
  - Tossing pokeballs have color in GBC mode
- You can now play as a girl when starting a new game
  - Has front, back, walking, fishing, and cycling sprites
  - Has unique default names when starting a new game
- If a pkmn has DVs that would make it shiny in Gen 2
  - An unused "power up" style of animation plays when it enters battle
  - It also has a shiny symbol by its name
- If playing on a super gameboy, shiny pkmn will have a palette swap on the status screen and also change color in battle
- If playing on super gameboy, hold select when loading a pokedex entry to see that pokemon's shiny palette
- Added an exp bar using code by Danny-E 33 
- Pokeball caught indicator for wild battles
- A gender symbol is displayed for pkmn species that are sexed
  - non-sexed species have no symbol
  - The symbol is displayed for a party mon in its status screen
  - The symbol is displayed in the battle hud only for wild enemy mon (the only time it matters)
- Oak's aid at the bottom-left of the lab toggles the caught & gender symbols after obtaining the pokedex
- Red & Blue versions use the back sprites from spaceworld 97 so as to be cohesive with the front sprites
- Added spaceworld-style trainer back sprites for consistency with the spaceworld 'mon back sprites 
- The silhouette effect at the start of battle now displays when playing on a DMG gameboy


#Pre-E4 NPCs
- The girl in Oak's lab toggles a built-in randomizer for wild pokemon and your starters
  - Shuffles all pokemon that can be gained through walking, surfing, fishing, or from the game corner
  - If activated early enough, your starter pokemon options are shuffled as well
  - Randomizes using a saved seed value, so the shuffled order is always preserved between play sessions
  - A new random seed is generated upon each new game
  - There are three pokemon lists based on base-stat-total; A, B, and C tiers
  - Pokemon are only shuffled within their own list in order to maintain some modicum of balance
  - Scripted events are unaffected (gifts, in-game trades, static encounters, etc)
  - The game's five legendary pokemon are excluded from randomization
  - The AREA feature of the pokedex automatically adjusts to show the new pokemon locations
- There is an Aide NPC in the viridian pokemon center that can toggle regular trainer randomization
  - Only affects regular trainers that use one level for all 'mons and have no custom movesets
  - Will replace their roster 'mons with random non-evolved 'mons (legendaries are excluded)
  - The new mons will be swapped with their evolved forms if at a high enough level
    - Pokemon that evolve below level 30 will evolve at 4/3x the original level 
    - Pokemon that evolve >= level 30 will evolve at 8/7x the original level   
  - This feature was added with the intent of spicing-up subsequent Gen-1 playthroughs
- New NPC in celadon hotel will reward coins for showing him requested pkmn
- Move deleter/relearner added to the saffron house below COPYCAT's house
  - Code comes from Mateo's Red++ hack. It's simply the best gen-1 implementation and I cannot come up with something better.
  - Talk to the little girl to delete moves.
  - Talk to her tutor to relearn moves.
  - I have expanded Mateo's code so that it also detects default level-0 moves from the baseStats header files.
- Catch-Up EXP Booster
  - Talk to the aide in the Celadon Diner to toggle this feature.  
  - While active, EXP gained is boosted if the active pokemon's level is lower than that of the fainted enemy.  
  - The boost is 1.5x multiplied by an additional 1.5x for every 3 levels of difference.  
  - For example, a level gap of 12 results in an EXP multiplier of (1.5)^4 = 5.0625.  
  - Use this feature to help you train-up new team members in the mid-to-late game.  
- Can rematch gym leaders and most non gym-leader trainers just by talking to them one or two times
  - Giovanni respawns after leaving the gym so you can rematch him
- Paras is gifted in the Route 2 house in case the player has no pokemon that can learn Cut
- Unused beedrill trade has been restored and placed on Route 22
- Added a scientist and books to the Cinnabar Lab fossil room for cloning and gene splicing
  - This process clones your 1st spot pokemon and modifies it with DNA from your 2nd spot pokemon.  
  - It does this by treating a pokemon's two bytes of DV values as if they were two genes with two alleles each.  
    - Gene-A has the Attack DV as its hi-side allele and the Defense DV as its lo-side allele.  
    - Gene-B has the Speed DV as its hi-side allele and the Special DV as its lo-side allele.  
    - The A-genes from the two donor pokemon will be mixed to make the clone's A-gene.  
    - The B-genes from the two donor pokemon will be mixed to make the clone's B-gene.  
  - Mixing two genes is done via Punnett Squares, and a random result is chosen based on its ratios.  
  - Within a Punnett quadrant, a hi allele makes the upper digits and a lo allele makes the lower digits.  
  - If two hi allels or two lo alleles fall within a Punnet quadrant, their order is randomly selected.  
- A new drink stand on the route 19 beach sells vending machine drinks


#Post-Game Content  
- S.S. Anne can be re-entered after defeating the elite 4.
  - minor text change indicating its return
  - the captain's text has been slightly altered for a more generic context
- There's a tournament being held in the SS Anne's kitchen after the elite 4 are beaten
  - Talk to the Gym Guy you find there
  - win 7 matches in a row for a master ball
  - Battles use teams of 3 pokemon
  - Your team is healed before battles
  - Enemy pokemon levels are based on the level of your strongest party pokemon
  - You must have an open item slot to claim your prize
  - Any trainer can appear with any three pokemon (excluding mew and mewtwo)
  - No breaks allowed in-between battles
- Vendor added to Celadon Dept. Store 3F
  - Sells max revives, moon stones, amber, fossils, exp all, master balls, and rare candy
  - Only opens up after beating elite 4
- Relocated one of the rocket grunts in celadon city, and he now sells bulk coins in the post-game
- In the safari zone gate, a new NPC can toggle on and off a special safari event after the elite 4
  - All pokemon in the safari zone will have above-average DVs
  - Also makes it so there is a rare chance for any pokemon to be encountered in the safari zone (depends on location)
- The game corner chief will buy pokemon from the player post-e4
- There is a new NPC in the west-east underground path that generates random battles after beating the elite 4
- There is a new NPC in the north-south underground path that generates mirror matches after beating the elite 4
- New item M.GENE: 
  - Re-randomizes a pkmn's DVs to above-average values.
  - Win 5 matches in a row against the random team NPC to get a M.GENE (leaving the area resets the win streak)
- New item MIST STONE: fully maxes-out a lvl > 30 pokemon's stat exp
- There are 5 new trainers to find and battle
  - Hint 1: Talking to Oak can guide you to the first one
  - Hint 2: The fifth one can only be fought after beating the first four.
- There are two missingno superbosses available after completing the pokedex
  - One for each infamous shore
  - Uses its L-block appearance remade as a proper image and has its own defined base stats data
  - Uses trainer battle routines (different music, uses AI, and uncatchable)
- Mew can be found in the wild, and one of the newly-added trainers gives a hint on how to find it
- New Game Plus has been added (still experimental)
  - Activated under these conditions:
    - Must have an existing non-corrupt game save on-file
	- Must have beaten the elite 4 in the on-file save
	- Press and hold SELECT while choosing the New Game option
	- A jingle will play to indicate NG+ has activated and the SELECT button can now be released
  - Preserves ONLY the following information (your current party will be lost):
    - Boxed pokemon
	- Play clock
	- Pokedex seen/owned registry
	- Hall of Fame (experimental)
	- Option screen selections
  - A new trainer ID and hash is generated, so boxed pokemon are permanently treated as traded pokemon


#Cheats and Secrets
<details>
  <summary>Click to Reveal Spoilers!</summary>

- The surfboard, a nugget, and TM 15 are hidden items added to the vermilion dock
- Mew is on the basement level of the unknown dungeon
  - it is the rarest encounter in the game
  - only shows up after getting the pokedex diploma
  - can only be encountered once like static legendaries
- Using the super rod in the unknown dungeon basement will yield glitch-level experiment dittos (a trap encounter)
- Pay Day shenanigans
  - A pkmn with Pay Day in the 1st party slot will play its cry when interacting with a lucky slot machine
  - A pkmn with Pay Day in the 1st party slot will play its cry when a slot machine enters payout modes
    - 1 cry for a normal payout on the next pull
    - 2 cries to signal the possibility of all 7s/bars on the next pull
    - 3 cries to signal that super payout mode had been entered
- Secret EXP boosting
  - Pkmn with levels > level cap give 255 stat exp for each stat
  - Pkmn with levels > level cap have 255 base exp yield
- If a chansey >= level 100 is first in your roster:
  - Shiny wild random encounters and fishing rod encounters are much more common (1 in 256)
  - Repel effects will not block shiny encounters
- Shiny Mercy 
  - When a player encounters an AI trainer shiny pokemon, the next wild encounter will be shiny
  - AI trainers can only have shinies in hard mode, so it affords more chances to find wild shinies
- Winning the SS Anne tournament with a pikachu in the party will set its catch rate to 168
  - In this rom hack, a pikachu with this catch rate can be taught Surf via HM
  - This catch rate makes it hold a gorgeous box if transferred to Gen 2
  - In case of multiple pikachus, only the first in the roster will be affected
  - Likewise, a pikachu holding a gorgeous box can learn surf if transferred into this rom hack
- Defeat Lance with a Dragonite in your top spot and it will be given a catch rate of 168
  - Dragonite's cry will play to confirm that this has happened
  - In this rom hack, a dragonite with this catch rate can be taught Fly via HM
  - This catch rate makes it hold a gorgeous box if transferred to Gen 2
  - Likewise, a dragonite holding a gorgeous box can learn fly if transferred into this rom hack
- Added Bill's secret garden behind his house
  - Put Mew in your top spot and show Bill to gain access
  - You will encounter the starter pokemon plus some other rarer pokemon
  - Shiny rates are 1-in-128 in this area
- Show Mewtwo to Mr. Fuji after beating the Elite 4 to get a M.GENE
- Obtaining the MIST STONE:
  - There is a secret cave on Route 13, and the book within tells you to go to Bill's secret garden
  - Return to this book afterwards in order to find a mist stone
  - The mist stone will max-out all the stat exp of the lvl > 30 pokemon on which it is used
- The five new trainer battles are as follows
  - Talking to prof oak after beating the elite 4 and answering "No" let's you challenge him to a battle
  - Can battle Mr. Fuji after beating the elite 4
  - Can battle the Silph Chief after beating the elite 4
  - Trainer Green (named Seiga) can be battled next to the ss anne dock truck after beating the elite 4
  - Mind battle with future Trainer RED after beating the elite 4 via the new girl outside Bill's villa
    - Must have beaten Oak, Fuji, Silph Chief, and Green (the order doesn't matter)
    - After winning, must re-defeat the four extra trainers before you can challenge again
    - A win will respawn Mewtwo, the legendary birds, and allow Mew to be found again, and reset the mist stone events
- You can now battle missingno on the infamous cinnabar shoreline
  - You must have gotten the pokedex diploma first
  - Activated the traditional way via the "old man in viridian" method
  - The battle will trigger randomly while surfing on the shore even if you are not moving
  - If defeated, it will set a non-key item in the sixth bag slot to a quantity of 99
  - Win or lose, you must do the "Old Man" process again to reactivate the encounter
  - For an even harder battle, try using the eastern shore of the seafoam islands
- Implemented the old Down+B urban legend for pokeballs as a cheat code
  - The timing is different. You have to hold Down+B before the "[PLAYER] used [ITEM]" text finishes printing.
  - If successful, the ball tossed will be twice as effective as normal

</details>


#Availability Changes
---------------------
<details>
  <summary>Click to Reveal Spoilers!</summary>

#Added Encounter Locations for the following pokemon (rare if not normally in the chosen version):
- charmander on route 25 (4.3%)
- squirtle on route 6 (4.3%)
- bulbasaur on route 4 (4.3%)
- sandshrew (5.1%) and ekans (5.1%) on route 3
- vulpix (4.3%: red, blue-jp) or growlithe (4.3%: blue, green) on route 8
- bellsprout (4.3%: red, blue-jp) or oddish (4.3%: blue, green) on route 24
- meowth (9.8%: red) or mankey (9.8%: blue, green, blue-jp) on route 5
- farfetchd on route 12 (4.3%) and route 13 (1.2%)
- cubone added to rock tunnel (5.1% floor 1 and 1.2% floor 2)
- dodrio on route 17 (5.1%)
- porygon in the power plant in red version (1.2%)
- electabuzz in power plant in all versions (9.4% red and 5.1% all others)
- magmar in pokemon mansion basement in all versions (4.3%)
- snorlax in digletts cave (5.1%)
- eevee on route 21 grass (4.3%)
- hitmonchan (5.1%) & hitmonlee (5.1%) in victory road 3f
- version-swapped pinser/scyther in safari zone central-area
- lickitung (5.1% red, blue, green) in safari zone 1
- kangaskhan (5.1% blue-jp) in safari zone 1
- tauros (5.1% blue-jp) in safari zone 2
- jynx (5.1% red, blue, green) in safari zone 2
- mr mime in safari zone 3 (5.1%) 
- lapras replaces krabby when using super rod in safari zone
- magnemite on route 10 (5.1%)
- ponyta on route 7 (9.8%)
- tentacruel on water routes 19, 20, and 21 (6.3%)
- seaking on water routes 19, 20, and 21 (4.3%)
- route 22 super rod data has changed to give psyduck & poliwag
- version-swapped sandslash/arbok in unknown dungeon 1f
- unknown dungeon changes
  - encounter rates between pokemon slightly re-balanced
  - chansey is rarer
  - dittos are rare 


#Trade evolutions now alternately evolve with a stone at a certain level with some new hinting NPC text
  - Kadabra: Use a moon stone at >= level 35
  - Haunter: Use a thunder stone at >= level 35
  - Graveler: Use a fire stone at >= level 35
  - Machoke: Use a leaf stone at >= level 35

	
#Changes to pokemart inventories:
- TMs of all kinds at all stores. All TMs are now re-purchaseable at various stages of the game.
- Pewter city has ethers
- Lavender town has max ethers
- Saffron city has elixers
- Cinnabar island has max elixers
- Cerulean mart sells escape rope per Yellow version
- Fuschia mart sells hyper potions per Yellow version


#Added hidden items:
- Added a hidden max revive in celadon city
- Added a hidden super potion in celadon city
- Added a hidden moon stone in diglett's cave
- Added a hidden nugget in diglett's cave
- Added hidden potion on route 22
- Additional hidden potion in viridian city
- Added two hidden repels to pewter city
- Added a hidden great ball and pokedoll on route 6
- Added hidden max revive on route 11
- Added hidden ultra ball on route 8

</details>


#Built-In Nuzlocke Mode
------------------------
- Activation/Deactivation
  - Go to the OPTIONS screen.
  - Place the cursor in the BATTLE ANIMATION section.
  - Press A to toggle nuzlocke mode on or off.
  - The "NUZ!" symbol will appear if nuzlocke mode is on.
  
- Default Options
  - Some options are automatically changed when nuzlocke mode is turned on.
  - The Obedience Level Cap will be activated if the Scale Enemy Trainer Levels feature is inactive.
  - Also, the battle style will change to SET with hard mode.
  - These are not mandatory changes, and you may reconfigure your options as you wish.
  
- Rule 1: A pokemon that faints is considered dead and can no longer be used.
  - Revival items cannot be used in battle.
  - If a battle ends with no forfeiture, all pokemon with 0 HP are marked dead.
  - If a battle ends in a forfeit, all pokemon with 0 HP before the forfeit are marked dead.
  - Pokemon marked as dead have $05 written to their catch rate to permanently mark them.
  - Even if they are traded back and forth, dead pokemon remain marked as dead while in nuzlocke mode.
  - Medicinal items will not work on pokemon marked as dead, nor will Soft-boiled.
  - Party healing (Mom, Pokemon Center, blacking out, etc) makes a dead pokemon effectively useless.
  - To clarify, it gives a dead pokemon 1 HP, the FRZ status, and 0 PP for all moves.
  - This allows a player to continue the game with boxed pokemon in case of a total party loss.
  - Dead pokemon transferred to Gen-2 games will be holding a pokeball.

- Rule 2: You can only catch the 1st wild pokemon that you encounter in an area.
  - An "area" is defined by the name displayed on the town map.
  - You will be unable to throw balls in subsequent wild battles in that area.
  - Static wild battles count for this as well.
  - Wild battles before you can get pokeballs also count.
  - In light of this, you may want to delay activating nuzlocke mode until pokeballs are available.
  - Story wild battles (Old Man tutorial, Ghost Marowak, and Tower Ghosts) do not apply.
  
- Rule 3 (Optional): Nickname every pokemon you obtain.
  - You will always go straight to the nickname screen without a Yes/No prompt.
  - You can still opt out of a nickname by leaving the entry field blank.
  
- Built-in exceptions:
  - Shiny Clause: Nothing prevents you from throwing balls to catch a wild shiny pokemon.
  - Duplication Clause: Encountering a wild "owned" pokemon will not activate Rule 2.
  - Rule 2 resets for the Safari Zone area upon paying the entrance fee.
  - Catching a pokemon, even if owned, always activates Rule 2. Important for the Safari Zone and New Game+.
  - Dead pokemon can still use overworld moves (HM moves, Teleport, etc).

- Visuale Aides:
  - An Up-Down-Arrow symbol will display on the HUD of a wild pokemon if a ball is allowed to be tossed.
  - This symbol follows Rule 2 and any built-in exceptions previously destribed.

- Nuzlocke and the Safari Zone:
  - The Safari Zone is not inherently limited to a single entry in nuzlocke mode.
  - Entering the Safari Zone gives the player an opportunity to catch 1 pokemon.
  - And this opportunity presents itself each time the player pays the entry fee.

- Nuzlocke and New Game+:
  - New Game+ preserves the pokedex.
  - This means the Duplication Clause will prevent Rule 2 from activating.
  - In light of this, Rule 2 will always activate on an area upon the first catch made there.
  
- Dead pokemon and toggling Nuzlocke mode:
  - It is possible to cheat by turning off nuzlocke mode, healing a dead pokemon, then turning it back on.
  - If this is done, the healed pokemon is still considered dead.
  - This means that party-wide healing will make it useless and medicine still has no effect.
  - This has the potential for a kind of "undead run" rule variant.
 
- Removing the death marker:
  - The only way to undo this is by modifying the dead pokemon's catch rate.
  - This is usually done via the Gen-2 time capsule and trading it back without a hold item or a different hold item.


#About Gameshark Codes
----------------------
Will they work? Largely, yes...with some rules.  
Shin Pokemon does not reassign any wram or hram addresses, so cheat codes that modify values within these address ranges will still work.  
The GB/C's wram is in addresses C000-DFFF, and hram is in FF80-FFFE.  

Gameshark codes for the GB/C have an 8-digit hexadecimal format in the form of LMNOYZWX. The meaning of the separate digits is:  
- LM - External RAM bank number (typically 01)
- NO - a 2-digit byte to act as your injected value
- WXYZ - A 2-byte Memory Address to write the new value to (Note that the gameshark code format reverses the low and high bytes of the address)

So say you want a cheat code that gives you 99 of the first item in the bag.  
The quantity of the first item in the bag is at address D31F in wram, and 99-decimal equals 63-hex.  
This gives a gameshark code of 01631FD3.  

Any codes that follow these conventions and only modify the wram or hram should work like they do in the vanilla games.  


#Will Not Implement / Out of Scope
-----------------------------------
These are things that are commonly requested but fall outside the scope of the project. There are no plans to implement these:  
- Yellow Version - This is a different rom base, and I have no intention at this time to start all over on numerous features.
- Gen 2 color / graphics - The goal is to keep art direction and assets within the purview of a pre-1998 direction.
- Battle mechanics from later generations - Gen 1's gameplay must be generally be preserved, so no special defense, physical-special split, critical hits untied from speed, updated move pools, etc.
- Later-gen evolutions/forms/variants - I'm keeping this strictly to the original 151.


#Frequently Asked Questions
---------------------------
> **I love your work! How can I donate to you?**

The gesture is appreciated and highly flattering, but donations of any sort are politely declined.
	
> **What are the best ways to support Shin Pokemon?**

There are several ways you can support the project:
- Stream your playthrough.
- Make a Let's Play series.
- Do a review or an analysis piece.
- Create highly detailed bug reports with an "Issues" ticket.
- Recording and uploading your gameplay is the best resource for troubleshooting. Let's Plays and stream VODs are routinely searched for and examined. 

> **How do you come up with with new features and their implementations?**

It's primarily based on nostalgic schoolyard rumors, interesting "what if" ideas, and love for secrets and easter eggs from the 1990s gaming era.

> **A separate project used code from Shin Pokemon to do such-and-such feature. Will you backport it into Shin Pokemon?**

Let such projects have their own identity. Other creators need to be able to show off and be proud of what they made.

> **Why did you not use the artwork of Trainer Green from the Adventures comic or the Let's Go games for the female trainer option?**

Internal debate was heated on how to proceed for a female player option, but here's the reasoning that won out:
- Green's design was never intended to be a playable character. Ken Sugimori created her back-view because he needed to depict a trainer trio for an art piece.
- Trainer Red was always supposed to be the player. An original female trainer was never considered until gen-2's development phase around Nov-Dec 1997.
- Others already created original sprite art to include in their own projects, and lifting it might step on their toes or foster ill feelings.

So it was decided to whip-up something simple and original that depicted a female version of Trainer Red. She also acts as a (private) dev shoutout.

> **Why can Bide still hit opponents in the Fly/Dig state when Pokemon Stadium fixes this?**

Bide is a crummy move, but it gains a little more strategy in Shin Pokemon. This oversight was purposefully retained as a "feature" to help it out some more.

> **Why does Hyper Beam recharge work like it does in gen-2 instead of always needing to recharge like in Stadium?**

Shin Pokemon did do always-recharge at one point, but it was hated by *literally every player*. Removing recharge on a miss was done as a compromise.

> **Why is there a brief white frame flash when the screen transitions on Gameboy or Gameboy Color?**

It's a hardware quirk. There is a brief moment where the LCD is disabled. When it is re-enabled, the screen displays blank white for 1 frame. The LCD gets disabled because it allows writing to VRAM at any time.  
EDIT: I believe I've found a workaround by writing to VRAM during the HBLANK and VBLANK periods. The timing is a little tricky.


#Credits / Special Thanks
--------------------------
- The Pret team for the pokered and pokeyellow disassemblies and all the code comments that came with them
- MoriyaFaith's pokejp project for green version assets and code referencing
- Rangi for the tool Polished Map and the jp-style town map from Red/Blue Star
- Exp bar coded by Danny-E 33
- The Pokemon Prism team for the improved RNG used in this project's previous versions
- Patrik Rak for the new xor-shift RNG code
- Move deleter/relearner coded by TheFakeMateo for Pokemon Red++
- Code contributions and bugfixing by wisp92
- GLSWV for correcting the metric conversions of height and weight data 
- SteppoBlazer for the spaceworld-style old man back sprite
- Poketto for the spaceworld-style Trainer Red back sprite
- SPazzzi95 for documenting localization changes
- easyaspi314 for optimizations to the gamma shader and wavy-line animation bugfix
- Dracrius' pocketrgb-en project for finding corrections to jp-build inaccuracies

The following folks for their great tutorials, glitch videos, and explanations across the internet
- TheFakeMateo 
- Crystal_
- ChickasaurusGL
- v0id19

The following folks for bugfix collaberation
- kadetPirx
- JOBOalthor1992
- krazsen
- kmalove
- zycain
- jastolze007 
- MStern
- TSinnohTrainer 
- Chirutalis 
- coltongit

  
The shinpokered repository was branched from pret/pokered at [merge pull request #185 committed on Jul 2, 2018](https://github.com/pret/pokered/tree/c8599831992c91e521cf1d467ccae3d9498e42ef)
