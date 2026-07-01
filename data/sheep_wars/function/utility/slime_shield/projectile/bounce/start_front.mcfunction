

## trying to make this nice is so hard
#just copies rotation of interaction and runs next function as entity

execute at @e[predicate=sheep_wars:score/projectile_bounce/pos1,distance=..3.5] rotated as @s run tp @e[predicate=sheep_wars:score/projectile_bounce/pos1,distance=..3.5] ^ ^ ^ ~ ~

playsound block.slime_block.fall master @a[distance=..50] ~ ~ ~ 1.5 0.7 1

execute as @e[predicate=sheep_wars:score/projectile_bounce/pos1,distance=..3.5] at @s run function sheep_wars:utility/slime_shield/projectile/bounce/velocity with entity @s