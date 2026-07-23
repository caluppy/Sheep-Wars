
execute if predicate sheep_wars:projectile/properties/tick_linear at @s run function sheep_wars:projectile/tick/linear with entity @s data
execute if predicate sheep_wars:projectile/properties/tick_ridable at @s run function sheep_wars:projectile/tick/ridable with entity @s data

execute unless predicate sheep_wars:projectile/properties/ridable if entity @n[predicate=sheep_wars:projectile/properties/do_collision_projectile,distance=0.01..2.5] at @s run function sheep_wars:projectile/tick/trigger/entity_collision with entity @s data

execute if predicate sheep_wars:projectile/trigger_contact at @s run function sheep_wars:projectile/tick/trigger/generic with entity @s data
