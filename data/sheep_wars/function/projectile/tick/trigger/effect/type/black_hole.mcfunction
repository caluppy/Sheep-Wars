
##1t command for black hole
#gets facing position from player to sheep
#tp if player on oppositve team distance ..10 and effect slow if ..3

execute if predicate sheep_wars:projectile/properties/team_blue facing entity @n[predicate=sheep_wars:projectile/summon_type/black_hole_sheep,team=sheep_wars.red,distance=..10] feet run tp ^ ^ ^0.17
execute if predicate sheep_wars:projectile/properties/team_red facing entity @n[predicate=sheep_wars:projectile/summon_type/black_hole_sheep,team=sheep_wars.blue,distance=..10] feet run tp ^ ^ ^0.17

execute if predicate sheep_wars:projectile/properties/team_blue if entity @n[predicate=sheep_wars:projectile/summon_type/black_hole_sheep,team=sheep_wars.red,distance=..3] run effect give @s slowness 1 1 true
execute if predicate sheep_wars:projectile/properties/team_red if entity @n[predicate=sheep_wars:projectile/summon_type/black_hole_sheep,team=sheep_wars.blue,distance=..3] run effect give @s slowness 1 1 true

##cosmetics
execute at @n[predicate=sheep_wars:projectile/summon_type/black_hole_sheep,distance=..30] run particle portal ~ ~1 ~ 2 1 2 0.2 3
execute if score tick time matches 20 at @n[predicate=sheep_wars:projectile/summon_type/black_hole_sheep,distance=..30] run particle sculk_soul ~ ~1 ~ 1 0.5 1 0 3
execute if score tick time matches 20 at @n[predicate=sheep_wars:projectile/summon_type/black_hole_sheep,distance=..10] run playsound entity.breeze.whirl master @a[predicate=sheep_wars:player/alive,distance=..30] ~ ~ ~ 1 0.8
