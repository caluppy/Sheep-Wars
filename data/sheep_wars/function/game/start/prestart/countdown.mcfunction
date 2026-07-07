

##countdown before game start from lobby
#loads map during countdown from map selection after 1 secs (intial schedule is also 1 sec)

#cosmetic display
execute unless score #map time matches 0 run title @a[tag=sheep_wars_player] actionbar [{"text":"Game starts in: ","color":"gold"},{"score":{name:"#map",objective:"time"},"color":"red","bold":true}]
execute unless score #map time matches 0 as @a[tag=sheep_wars_player] at @s run playsound ui.button.click master @s ~ ~ ~ 0.5 2

execute if score #map time matches 2 run function sheep_wars:game/options/map/select

execute if score #map time matches 0 run return run function sheep_wars:game/start/global
scoreboard players remove #map time 1
schedule function sheep_wars:game/start/prestart/countdown 1s replace
