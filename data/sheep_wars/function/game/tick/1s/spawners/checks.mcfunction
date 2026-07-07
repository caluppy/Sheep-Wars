
##conditional check generic: invoked by both teams
#checks if block below is air -> kill remove marker

execute if predicate sheep_wars:game/spawner/conditional if predicate sheep_wars:game/spawner/conditional_check run kill @s

#used check
execute if predicate sheep_wars:game/spawner/used unless entity @n[type=item,distance=..2] run tag @s remove sheep_wars.spawner.used