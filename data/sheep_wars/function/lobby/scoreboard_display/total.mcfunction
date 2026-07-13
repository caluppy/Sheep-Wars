
##reset from game display to lobby display

execute positioned 10000 41 10000 as @a[gamemode=adventure,distance=..20] run tag @s add sheep_wars_player

scoreboard objectives remove sheep_wars.display
scoreboard objectives add sheep_wars.display dummy {"text":"Sheep Wars","color":"gold","bold":true}
scoreboard objectives modify sheep_wars.display numberformat blank
scoreboard objectives setdisplay sidebar sheep_wars.display

##Lobby score cosmetic load
# every § means new blank score 

team add display.lobby.map
team modify display.lobby.map prefix {"text":" - ","color":"gray"}

team add display.lobby.gamemode
team modify display.lobby.gamemode prefix {"text":" - ","color":"gray"}

team add display.lobby.spawnrate
team modify display.lobby.spawnrate color dark_gray
team modify display.lobby.spawnrate prefix {"text":" ","color":"gray"}

team join display.lobby.map §
team join display.lobby.gamemode §§
team join display.lobby.spawnrate Spawns:

scoreboard players set Map: sheep_wars.display 5
function sheep_wars:lobby/scoreboard_display/map

scoreboard players set Players: sheep_wars.display 4
function sheep_wars:lobby/scoreboard_display/team

scoreboard players set Gamemode: sheep_wars.display 2
function sheep_wars:lobby/scoreboard_display/gamemode

scoreboard players set Options: sheep_wars.display 1
function sheep_wars:lobby/scoreboard_display/options

function sheep_wars:lobby/interaction/summons/all