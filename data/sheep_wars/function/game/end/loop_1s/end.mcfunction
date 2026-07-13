
##teleports back to lobby, resets what needs to be reset and stuff idk

#stops game loop
scoreboard players set #game.running sheep_wars.options 0


title @s actionbar [{"text":"Teleporting to lobby","color":"red"}]
clear @s
effect clear @s
gamemode adventure @s
tag @s remove sheep_wars_player
effect give @s instant_health infinite 10 true
effect give @s saturation infinite 255 true
effect give @s resistance infinite 255 true

tp @s 10000 41 10000 ~ 90

execute if data storage sheep_wars:options_randomise {map:true} run scoreboard players set #map sheep_wars.options 0
execute if data storage sheep_wars:options_randomise {gamemode:true} run scoreboard players set #gamemode sheep_wars.options 0
execute if data storage sheep_wars:options_randomise {spawnrate:true} run scoreboard players set #spawnrate sheep_wars.options 0

function sheep_wars:lobby/scoreboard_display/total