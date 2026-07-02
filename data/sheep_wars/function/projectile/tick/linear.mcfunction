
##linear projectile motion application tick
#scale down is needed due to vel being stored as int -> scale down to double
#can optimise by only triggering this if a projectile is detected in the tick loop maybe? probs not worth

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s velocity.x
execute unless entity @s[predicate=sheep_wars:projectile/properties/do_gravity] store result entity @s Motion[1] double 0.001 run scoreboard players get @s velocity.y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s velocity.z

execute if predicate sheep_wars:projectile/summon_type/ride_fast_sheep run scoreboard players set @s new_projectile.is_riding 0
execute if predicate sheep_wars:projectile/summon_type/ride_fast_sheep store success score @s new_projectile.is_riding on passengers run scoreboard players set @s new_projectile.is_riding 1
execute if predicate sheep_wars:projectile/summon_type/ride_fast_sheep if score @s new_projectile.is_riding matches 0 run function sheep_wars:projectile/summon_sheep/layer_3/ridable_dismount with entity @s data

execute at @s run particle cloud ^ ^ ^-0.5 0 0 0 0.01 1