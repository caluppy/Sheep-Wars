
##base function getting players and map ready for game start

difficulty normal
gamerule keep_inventory true

gamerule tnt_explodes true
gamerule mob_griefing true

gamerule mob_drops true
gamerule block_drops false

gamerule spawn_mobs false
gamerule spawn_monsters false
gamerule spawn_patrols false
gamerule spawn_phantoms false
gamerule spawn_wandering_traders false

execute positioned 10000 0 10000 run kill @e[type=!player,distance=..500]