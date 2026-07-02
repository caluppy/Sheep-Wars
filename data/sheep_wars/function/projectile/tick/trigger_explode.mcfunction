
##triggers explosion type based on entity predicates

execute if entity @s[predicate=sheep_wars:projectile/summon_type/base_sheep] at @s run summon tnt ~ ~ ~ {fuse:20b,explosion_power:1,CustomName:{"text":"Sheep Missile","color":"green"}}
execute if entity @s[predicate=sheep_wars:projectile/summon_type/ride_fast_sheep] at @s run summon tnt ~ ~ ~ {fuse:20b,explosion_power:0.5,CustomName:{"text":"Sheep Hang Glider","color":"blue"}}

execute if entity @s[predicate=sheep_wars:projectile/summon_type/mortar_sheep] at @s run summon tnt ~ ~ ~ {fuse:20b,explosion_power:2,CustomName:{"text":"Sheep Mortar","color":"dark_green"}}
execute if entity @s[predicate=sheep_wars:projectile/summon_type/ride_carpet_squid] at @s run summon tnt ~ ~ ~ {fuse:20b,explosion_power:2,CustomName:{"text":"Squid Bomber","color":"dark_green"}}

data merge entity @s {DeathLootTable:"minecraft:empty"}
tp @s ~ -200 ~