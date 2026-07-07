
##clear map tick after marker summoned 

execute as @s run fill 9951 ~ 10049 10049 ~-2 9951 air

execute at @s run tp @s 10000 ~-3 10000

execute positioned 10000 -64 10000 if entity @s[distance=..1] run return run function sheep_wars:structure/map/clear/exit
schedule function sheep_wars:structure/map/clear/schedule 1t replace