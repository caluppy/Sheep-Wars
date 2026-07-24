

##countdown before game start from lobby
#loads map during countdown from map selection after 1 secs (intial schedule is also 1 sec)

#cosmetic display

execute store result bossbar sheep.wars.display.ready max store result score players.total sheep_wars.background run give @a[predicate=sheep_wars:player/alive] air
execute store result bossbar sheep.wars.display.ready value store result score players.ready sheep_wars.background run give @a[predicate=sheep_wars:player/lobby_ready] air

execute unless score players.total sheep_wars.background = players.ready sheep_wars.background run return run function sheep_wars:game/start/prestart/cancel

execute unless score #map time matches 0 run title @a[predicate=sheep_wars:player/alive] actionbar [{"text":"Game starts in: ","color":"gold"},{"score":{name:"#map",objective:"time"},"color":"red","bold":true}]
execute unless score #map time matches 0 as @a[predicate=sheep_wars:player/alive] at @s run playsound ui.button.click master @s ~ ~ ~ 0.5 2

execute if score #map time matches 2 run function sheep_wars:game/options/map

execute if score #map time matches 0 run return run function sheep_wars:game/start/global
scoreboard players remove #map time 1
schedule function sheep_wars:game/start/prestart/countdown 1s replace
