
execute if score @s player_UUID_0 = @a[predicate=sheep_wars:player/alive,distance=0.01..2.5,sort=nearest,limit=1] player_UUID_0 run return fail
execute if predicate sheep_wars:projectile/summon_type/air_strike if score @s player_UUID_0 = @n[predicate=sheep_wars:projectile/properties/do_collision_projectile,type=tnt,distance=0.01..2.5] player_UUID_0 run return fail
execute if score @s player_UUID_0 = @n[predicate=sheep_wars:projectile/properties/do_collision_projectile,predicate=sheep_wars:projectile/properties/ridable,distance=0.01..2.5] player_UUID_0 run return fail

function sheep_wars:projectile/tick/trigger/generic with entity @s data