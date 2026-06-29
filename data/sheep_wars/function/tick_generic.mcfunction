
##generic tick loop for sheepwars
#triggers other tick functions so data can be referenced by macros

execute positioned 10000 0 10000 as @e[predicate=sheep_wars:summon_type/tick_linear,distance=..500] at @s run function sheep_wars:projectile/tick/linear
execute positioned 10000 0 10000 as @e[predicate=sheep_wars:summon_type/tick_ridable,distance=..500] at @s run function sheep_wars:projectile/tick/ridable with entity @s data
execute positioned 10000 0 10000 if entity @e[type=item,distance=..500] as @e[predicate=sheep_wars:projectile_death/generic,nbt={"Item":{components:{"minecraft:custom_data":{"projectile_death":true}}}},distance=..500] at @s run function sheep_wars:cleanup/projectile_death/projectile_generic
execute positioned 10000 0 10000 as @e[predicate=sheep_wars:trigger_explode,distance=..500] at @s run function sheep_wars:projectile/tick/trigger_explode

execute positioned 10000 0 10000 as @e[type=interaction,distance=..500] at @s rotated as @s run function sheep_wars:utility/slime_shield/projectile/check with entity @s