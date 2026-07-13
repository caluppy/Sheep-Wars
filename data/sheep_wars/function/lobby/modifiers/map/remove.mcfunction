
##remove if -1 reset to 1

scoreboard players remove #map sheep_wars.options 1
execute if score #map sheep_wars.options matches -1 run scoreboard players set #map sheep_wars.options 1

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1

function sheep_wars:lobby/scoreboard_display/map