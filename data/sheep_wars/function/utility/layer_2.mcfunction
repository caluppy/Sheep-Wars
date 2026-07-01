
#sets player and entity UUIDs as usable values in macros when data is referenced in the function
#forks based on ridable and projectile| will need more for more projectile types

data modify entity @s data.playerUUID set from entity @s data.playerUUID[0]
data modify entity @s data.entityUUID set from entity @s UUID[0]

scoreboard players set @s new_projectile.motion_success 0
scoreboard players set @s projectile.bounce 0

execute if entity @s[predicate=sheep_wars:utility_type/slime_shield] run scoreboard players set @s time 60
tag @s remove sheep_wars.utility.new