
##teleports back to lobby, resets what needs to be reset and stuff idk

#stops game loop
scoreboard players set #game.running sheep_wars.background 0
execute positioned 10000 0 10000 run kill @e[type=!player,distance=..500]

execute as @a[predicate=sheep_wars:player/on_team] run function sheep_wars:game/end/loop_1s/end_player

execute if data storage sheep_wars:options_randomise {map:true} run scoreboard players set #map sheep_wars.options 0
execute if data storage sheep_wars:options_randomise {gamemode:true} run scoreboard players set #gamemode sheep_wars.options 0
execute if data storage sheep_wars:options_randomise {spawnrate:true} run scoreboard players set #spawnrate sheep_wars.options 0
execute if data storage sheep_wars:options_randomise {friendly_fire:true} run scoreboard players set #friendly_fire sheep_wars.options 0
execute if data storage sheep_wars:options_randomise {bounce:true} run scoreboard players set #bounce sheep_wars.options 0


function sheep_wars:lobby/scoreboard_display/total