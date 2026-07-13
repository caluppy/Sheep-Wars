
##remove if -1 reset to 1

scoreboard players remove #gamemode sheep_wars.options 1
execute if score #gamemode sheep_wars.options matches -1 run scoreboard players set #gamemode sheep_wars.options 1

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1

function sheep_wars:lobby/scoreboard_display/gamemode