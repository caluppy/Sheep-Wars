
##reset from game display to lobby display

execute positioned 10000 41 10000 as @a[gamemode=adventure,distance=..20] run tag @s add sheep_wars.player

scoreboard objectives remove sheep_wars.display
scoreboard objectives add sheep_wars.display dummy {"text":"Sheep Wars","color":"gold","bold":true}
scoreboard objectives modify sheep_wars.display numberformat blank
scoreboard objectives setdisplay sidebar.team.blue sheep_wars.display
scoreboard objectives setdisplay sidebar.team.red sheep_wars.display
scoreboard objectives setdisplay sidebar.team.gray sheep_wars.display

##Lobby score cosmetic load
# every § means new blank score 

team add display.lobby.map
team modify display.lobby.map prefix {"text":" - ","color":"gray"}

team add display.lobby.gamemode
team modify display.lobby.gamemode prefix {"text":" - ","color":"gray"}

team add display.lobby.spawnrate
team modify display.lobby.spawnrate color dark_gray
team modify display.lobby.spawnrate prefix {"text":" ","color":"gray"}

team add display.lobby.friendly_fire
team modify display.lobby.friendly_fire color dark_gray
team modify display.lobby.friendly_fire prefix {"text":" Team "}

team add display.lobby.bounce
team modify display.lobby.bounce color dark_gray
team modify display.lobby.bounce prefix {"text":" "}

team join display.lobby.map §
team join display.lobby.gamemode §§
team join display.lobby.spawnrate Spawns:
team join display.lobby.friendly_fire Kill:
team join display.lobby.bounce Bounce:

bossbar add sheep.wars.display.ready [{text:"Players Ready","color":"gold"}]
bossbar set sheep.wars.display.ready color green
bossbar set sheep.wars.display.ready players @a[predicate=sheep_wars:player/alive]


scoreboard players set Map: sheep_wars.display 5
function sheep_wars:lobby/scoreboard_display/map

scoreboard players set Players: sheep_wars.display 4
function sheep_wars:lobby/scoreboard_display/team

scoreboard players set Gamemode: sheep_wars.display 2
function sheep_wars:lobby/scoreboard_display/gamemode

scoreboard players set Options: sheep_wars.display 1
function sheep_wars:lobby/scoreboard_display/options

function sheep_wars:lobby/interaction/summons/all