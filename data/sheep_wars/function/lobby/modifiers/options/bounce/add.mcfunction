
##add if 2 reset to 0

scoreboard players add #bounce sheep_wars.options 1
execute if score #bounce sheep_wars.options matches 4 run scoreboard players set #bounce sheep_wars.options 0

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1

function sheep_wars:lobby/scoreboard_display/options