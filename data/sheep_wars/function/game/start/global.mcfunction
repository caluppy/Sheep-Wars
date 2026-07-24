
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

execute as @e[predicate=sheep_wars:lobby/interaction/start] at @s run kill @e[type=!player,distance=..5]
bossbar remove sheep.wars.display.ready

##reset key scores + set up sidebar display
scoreboard players set tick time 0

scoreboard objectives remove sheep_wars.display
scoreboard objectives add sheep_wars.display dummy {"text":"Sheep Wars","color":"gold","bold":true}
scoreboard objectives modify sheep_wars.display numberformat blank
scoreboard objectives setdisplay sidebar.team.blue sheep_wars.display
scoreboard objectives setdisplay sidebar.team.red sheep_wars.display
scoreboard objectives setdisplay sidebar.team.gray sheep_wars.display

#using give air instead of team list because team list includes nonplayer entities on team
execute store result score players.blue sheep_wars.background run give @a[predicate=sheep_wars:player/team_blue] air
execute store result score players.red sheep_wars.background run give @a[predicate=sheep_wars:player/team_red] air
execute store result score players.total sheep_wars.background run give @a[predicate=sheep_wars:player/alive] air
team modify display.players_left.blue suffix [{"text":" "},{"score":{name:"players.blue","objective":"sheep_wars.background"},"color":"gold"}]
team modify display.players_left.red suffix [{"text":" "},{"score":{name:"players.red","objective":"sheep_wars.background"},"color":"gold"}]
team modify display.players_left.total suffix [{"text":" Left: ","color":"white"},{"score":{name:"players.total",objective:"sheep_wars.background"},color:"gold"}]

execute unless score #gamemode sheep_wars.options matches 3 run scoreboard players set Blue sheep_wars.display 0
execute unless score #gamemode sheep_wars.options matches 3 run scoreboard players set Red sheep_wars.display 0
scoreboard players set Players sheep_wars.display 1

#timer display
scoreboard players set game.time sheep_wars.background 0
scoreboard players set game.time.minutes sheep_wars.background 0
team modify display.game_time suffix [{"text":" "},{"text":"0","color":"gold"},{"text":":","color":"yellow"},{"text":"00","color":"gold"}]
scoreboard players set Time: sheep_wars.display 2

##gamemode modifiers requiring scoreboard changes
#currently only FFA
execute if score #gamemode sheep_wars.options matches 3 run team join sheep_wars.none @a[predicate=sheep_wars:player/alive]

#runs player specific functions
execute as @a[predicate=sheep_wars:player/alive] at @s run function sheep_wars:game/start/team/player_generic

#starts game loop
scoreboard players set #game.running sheep_wars.background 1

##sets up spawner timer with modifiers
#base cooldown will change as timer progresses
#modifier.generic not set here because it will be set in game options (1 on reload)
#red and blue have their own modifier for modification with powerups
#spawner.modifier-s are consistent between player spawner and powerup spawns
#base and final will be separate 

scoreboard players set #cooldown.modifier.red sheep_wars.background 2
scoreboard players set #cooldown.modifier.blue sheep_wars.background 2
scoreboard players set #cooldown.modifier.generic sheep_wars.background 2

##spawner scores
scoreboard players set #spawner.cooldown.base sheep_wars.background 5

scoreboard players operation #spawner.cooldown.final.blue sheep_wars.background = #spawner.cooldown.base sheep_wars.background
scoreboard players operation #spawner.cooldown.final.blue sheep_wars.background *= #spawnrate sheep_wars.options
scoreboard players operation #spawner.cooldown.final.blue sheep_wars.background *= #cooldown.modifier.generic sheep_wars.background
execute store result score #spawner.cooldown.final.red sheep_wars.background run scoreboard players operation #spawner.cooldown.final.blue sheep_wars.background *= #cooldown.modifier.blue sheep_wars.background

##player item scores
scoreboard players set #item.cooldown.base sheep_wars.background 3

scoreboard players operation #item.cooldown.final.blue sheep_wars.background = #item.cooldown.base sheep_wars.background
scoreboard players operation #item.cooldown.final.blue sheep_wars.background *= #spawnrate sheep_wars.options
scoreboard players operation #item.cooldown.final.blue sheep_wars.background *= #cooldown.modifier.generic sheep_wars.background
execute store result score #item.cooldown.final.red sheep_wars.background store result score #item.cooldown.final.none sheep_wars.background run scoreboard players operation #item.cooldown.final.blue sheep_wars.background *= #cooldown.modifier.blue sheep_wars.background


##powerup scores
execute store result score #powerup.cooldown.final sheep_wars.background run random value 15..25
scoreboard players operation #powerup.cooldown.final sheep_wars.background *= #spawnrate sheep_wars.options
scoreboard players operation #powerup.cooldown.final sheep_wars.background *= #cooldown.modifier.generic sheep_wars.background

function sheep_wars:structure/map/clear/lobby_temp