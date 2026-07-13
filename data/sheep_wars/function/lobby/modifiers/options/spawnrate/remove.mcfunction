
##remove if -1 reset to 1

scoreboard players remove #spawnrate sheep_wars.options 1
execute if score #spawnrate sheep_wars.options matches -1 run scoreboard players set #spawnrate sheep_wars.options 3

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1

function sheep_wars:lobby/scoreboard_display/options