
## readies count down and clears map

scoreboard players set #map time 3
function sheep_wars:structure/map/clear/start
title @a[tag=sheep_wars_player] actionbar {"text":"Game starting!","color":"green"}
execute as @a[tag=sheep_wars_player] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1
schedule function sheep_wars:game/start/prestart/countdown 1s replace