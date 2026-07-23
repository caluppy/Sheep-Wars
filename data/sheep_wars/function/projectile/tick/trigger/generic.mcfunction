
execute if predicate sheep_wars:projectile/touching_barrier run return run function sheep_wars:projectile/tick/trigger/fail

execute if predicate sheep_wars:projectile/properties/do_explode run function sheep_wars:projectile/tick/trigger/explode with entity @s data
execute if predicate sheep_wars:projectile/properties/do_effect run function sheep_wars:projectile/tick/trigger/effect/start with entity @s data
