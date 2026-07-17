
execute if score #game.running sheep_wars.background matches 1 run return fail

execute as @e[predicate=sheep_wars:lobby/interaction/generic] at @s run function sheep_wars:lobby/interaction/detect/generic

execute positioned 10000 0 10000 as @a[predicate=sheep_wars:player/alive] unless entity @s[distance=..500] run function sheep_wars:lobby/player_leave