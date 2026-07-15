
execute if predicate sheep_wars:projectile/properties/tick_linear at @s run function sheep_wars:projectile/tick/linear with entity @s data
execute if predicate sheep_wars:projectile/properties/tick_ridable at @s run function sheep_wars:projectile/tick/ridable with entity @s data

execute if entity @n[predicate=sheep_wars:projectile/properties/motion_tagged,distance=0.1..1.5] at @s run function sheep_wars:projectile/tick/trigger/generic with entity @s data
execute if predicate sheep_wars:projectile/trigger_contact at @s run function sheep_wars:projectile/tick/trigger/generic with entity @s data
