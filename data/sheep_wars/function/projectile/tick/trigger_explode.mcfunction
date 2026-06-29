
##triggers explosion type based on entity tags

execute if entity @s[tag=sheep_wars.explosion.base] at @s run summon tnt ~ ~ ~ {fuse:20b,explosion_power:1,CustomName:{"text":"Sheep Missile","color":"green"}}
execute if entity @s[tag=sheep_wars.type.mortar] at @s run summon tnt ~ ~ ~ {fuse:20b,explosion_power:2,CustomName:{"text":"Sheep Mortar","color":"dark_green"}}
execute if entity @s[tag=sheep_wars.type.carpet_bomb] at @s run summon tnt ~ ~ ~ {fuse:20b,explosion_power:2,CustomName:{"text":"Squid Bomber","color":"dark_green"}}

data merge entity @s {DeathLootTable:"minecraft:empty"}
tp @s ~ -200 ~