
##summons marker for ticking

summon marker 10000 38 10000 {Tags:["sheep_wars.map.clear"]}

execute positioned 10000 38 10000 as @n[type=marker,tag=sheep_wars.map.clear,distance=..10] run function sheep_wars:structure/map/clear/tick