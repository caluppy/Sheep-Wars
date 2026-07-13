
execute if score #game.running sheep_wars.options matches 1 run return fail

execute as @e[predicate=sheep_wars:lobby/interaction/generic] at @s run function sheep_wars:lobby/interaction/detect/generic