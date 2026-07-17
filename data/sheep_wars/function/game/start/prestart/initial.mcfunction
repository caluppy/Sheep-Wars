
## readies count down and clears map

scoreboard players set #map time 3
function sheep_wars:structure/map/clear/start
title @a[predicate=sheep_wars:player/alive] actionbar {"text":"Game starting!","color":"green"}
execute as @a[predicate=sheep_wars:player/alive] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1

bossbar remove sheep.wars.display.ready
tag @a[predicate=sheep_wars:player/alive] remove sheep_wars.player.ready

execute if entity @a[predicate=sheep_wars:player/no_team] run function sheep_wars:game/start/prestart/team_randomise/assign

schedule function sheep_wars:game/start/prestart/countdown 1s replace


##runs options list and randomises if needed
#doesnt include map or spawnrate on purpose *smile*
function sheep_wars:game/options/generic

##sheep_wars.display is the sidebar display for game loop
scoreboard objectives remove sheep_wars.display
scoreboard objectives add sheep_wars.display dummy {"text":"Sheep Wars","color":"gold","bold":true}
scoreboard objectives add sheep_wars.background dummy

#functional teams, uses suffix to display scores ingame
team add display.players_left.blue
team modify display.players_left.blue color blue
team modify display.players_left.blue prefix {"text":" - ","color":"gray"}

team add display.players_left.red
team modify display.players_left.red color red
team modify display.players_left.red prefix {"text":" - ","color":"gray"}

team add display.players_left.total

team add display.game_time
team modify display.game_time color green
team modify display.game_time prefix [{"text":" - ","color":"gray"},{"text":"Game ","color":"green"}]

team join display.players_left.blue Blue
team join display.players_left.red Red
team join display.players_left.total Players:

team join display.game_time Time:

#cosmetic team colors
team add display.color.white
team modify display.color.white color white
team modify display.color.white suffix {"text":" Left:","color":"white"}
team join display.color.white Players