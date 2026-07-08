
##base function getting players and map ready for game start

difficulty normal
gamerule keep_inventory true
gamerule immediate_respawn true

gamerule tnt_explodes true
gamerule mob_griefing true

gamerule mob_drops true
gamerule block_drops false

gamerule spawn_mobs false
gamerule spawn_monsters false
gamerule spawn_patrols false
gamerule spawn_phantoms false
gamerule spawn_wandering_traders false

#reset key scores
scoreboard players set tick time 0

#runs player specific functions
execute as @a[tag=sheep_wars_player] at @s run function sheep_wars:game/start/team/player_generic

#starts game loop
scoreboard players set #game.running sheep_wars.options 1

##sets up spawner timer with modifiers
#base cooldown will change as timer progresses
#modifier.generic not set here because it will be set in game options (1 on reload)
#red and blue have their own modifier for modification with powerups
#spawner.modifier-s are consistent between player spawner and powerup spawns
#base and final will be separate 

##spawner scores
scoreboard players set #spawner.cooldown.base sheep_wars.options 20
scoreboard players set #cooldown.modifier.red sheep_wars.options 1
scoreboard players set #cooldown.modifier.blue sheep_wars.options 1
scoreboard players set #spawner.cooldown.final.blue sheep_wars.options 20
scoreboard players set #spawner.cooldown.final.red sheep_wars.options 20

##player item scores
scoreboard players set #item.cooldown.base sheep_wars.options 10
scoreboard players set #item.cooldown.final.blue sheep_wars.options 10
scoreboard players set #item.cooldown.final.red sheep_wars.options 10
