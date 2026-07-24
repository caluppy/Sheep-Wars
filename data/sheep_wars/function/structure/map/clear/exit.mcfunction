
##exit function for map clear

execute as @e[predicate=sheep_wars:lobby/interaction/start] on passengers at @s as @e[type=!player,predicate=!sheep_wars:lobby/interaction/start,distance=1..500] run kill @s
