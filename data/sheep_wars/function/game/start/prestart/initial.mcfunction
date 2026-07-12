
## readies count down and clears map

scoreboard players set #map time 3
function sheep_wars:structure/map/clear/start
title @a[predicate=sheep_wars:player/alive] actionbar {"text":"Game starting!","color":"green"}
execute as @a[predicate=sheep_wars:player/alive] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1
schedule function sheep_wars:game/start/prestart/countdown 1s replace