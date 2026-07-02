
#sets player and entity UUIDs as usable values in macros when data is referenced in the function
#forks based on ridable and projectile| will need more for more projectile types

data modify entity @s data.playerUUID set from entity @s data.playerUUID[0]
data modify entity @s data.entityUUID set from entity @s UUID[0]

scoreboard players set @s new_projectile.motion_success 0
scoreboard players set @s projectile.bounce 0

execute as @s if entity @s[predicate=sheep_wars:projectile/summon_type/base_sheep] at @s run function sheep_wars:projectile/summon_sheep/layer_3/linear with entity @s data
execute as @s if entity @s[predicate=sheep_wars:projectile/summon_type/mortar_sheep] at @s run function sheep_wars:projectile/summon_sheep/layer_3/gravity with entity @s data

execute as @s if entity @s[predicate=sheep_wars:projectile/summon_type/ride_fast_sheep] at @s run function sheep_wars:projectile/summon_sheep/layer_3/ride_linear with entity @s data
execute as @s if entity @s[predicate=sheep_wars:projectile/summon_type/ride_carpet_squid] at @s run function sheep_wars:projectile/summon_sheep/layer_3/ridable with entity @s data