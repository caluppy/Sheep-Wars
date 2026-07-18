
execute if score tick time matches 19 at @s run function sheep_wars:powerup/tick/1s_schedule/time

execute if entity @n[predicate=sheep_wars:player/alive,distance=..2] run return run function sheep_wars:powerup/apply/is_player
execute as @n[predicate=sheep_wars:projectile/properties/do_collision_projectile,predicate=!sheep_wars:player/alive,distance=..2] at @s run function sheep_wars:powerup/apply/get_player with entity @s data
