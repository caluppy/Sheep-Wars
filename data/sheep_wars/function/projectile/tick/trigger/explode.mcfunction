
##triggers explosion type based on entity predicates

$execute if entity @s[predicate=sheep_wars:projectile/summon_type/base_sheep] at @s run summon tnt ~ ~ ~ {fuse:5b,explosion_power:4,owner:$(owner),CustomName:{"text":"Sheep Missile","color":"green"}}
$execute if entity @s[predicate=sheep_wars:projectile/summon_type/ride_fast_sheep] at @s run summon tnt ~ ~ ~ {fuse:30b,explosion_power:2,owner:$(owner),CustomName:{"text":"Sheep Hang Glider","color":"blue"}}

$execute if entity @s[predicate=sheep_wars:projectile/summon_type/mortar_sheep] at @s run summon tnt ~ ~ ~ {fuse:5b,explosion_power:6,owner:$(owner),CustomName:{"text":"Sheep Mortar","color":"dark_green"}}
$execute if entity @s[predicate=sheep_wars:projectile/summon_type/ride_carpet_squid] at @s run summon tnt ~ ~ ~ {fuse:30b,explosion_power:4,owner:$(owner),CustomName:{"text":"Squid Bomber","color":"dark_green"}}

scoreboard players operation @n[type=tnt,distance=0] player_UUID_0 = @s player_UUID_0
data merge entity @s {DeathLootTable:"minecraft:empty"}
tp @s ~ -200 ~
