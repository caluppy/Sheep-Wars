
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

##reset key scores + set up sidebar display
scoreboard players set tick time 0

scoreboard objectives setdisplay sidebar sheep_wars.display
#using give air instead of team list because team list includes nonplayer entities on team
execute store result score players.blue sheep_wars.background run give @a[predicate=sheep_wars:player/team_blue] air
execute store result score players.red sheep_wars.background run give @a[predicate=sheep_wars:player/team_red] air
team modify display.players_left.blue suffix [{"text":" "},{"score":{name:"players.blue","objective":"sheep_wars.background"},"color":"gold"}]
team modify display.players_left.red suffix [{"text":" "},{"score":{name:"players.red","objective":"sheep_wars.background"},"color":"gold"}]
scoreboard players set Blue sheep_wars.display 0
scoreboard players set Red sheep_wars.display 0
scoreboard players set Players sheep_wars.display 1
#timer display
scoreboard players set game.time sheep_wars.background 0
team modify display.game_time suffix [{"text":" "},{"score":{name:"game.time","objective":"sheep_wars.background"},"color":"gold"}]
scoreboard players set Time: sheep_wars.display 2


#runs player specific functions
execute as @a[predicate=sheep_wars:player/alive] at @s run function sheep_wars:game/start/team/player_generic

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

function sheep_wars:structure/map/clear/lobby_temp