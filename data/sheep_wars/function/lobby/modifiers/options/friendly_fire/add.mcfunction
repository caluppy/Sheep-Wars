
##add if 2 reset to 0

scoreboard players add #friendly_fire sheep_wars.options 1
execute if score #friendly_fire sheep_wars.options matches 3 run scoreboard players set #friendly_fire sheep_wars.options 0


playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1

function sheep_wars:lobby/scoreboard_display/options