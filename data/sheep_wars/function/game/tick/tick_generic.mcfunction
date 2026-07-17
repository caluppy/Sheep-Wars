
##generic tick loop for sheepwars
#triggers other tick functions so data can be referenced by macros

##only runs if #game.running background = 1 (will always run if hashed)
execute if score #game.running sheep_wars.background matches 0 run return fail

scoreboard players add tick time 1
execute if score tick time matches 21 run scoreboard players set tick time 1

#schedule general 1s timer: currently only for spawner timer
execute if score tick time matches 20 run function sheep_wars:game/tick/1s/generic

#projectile tick checks
execute positioned 10000 0 10000 as @e[predicate=sheep_wars:projectile/properties/motion_tagged,distance=..500] at @s run function sheep_wars:projectile/tick/generic with entity @s data
execute positioned 10000 0 10000 as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{projectile_item:true}}}},distance=..500] at @s run function sheep_wars:game/tick/loot_table_conversions/projectile_item/entity

#utility tick checks
execute positioned 10000 0 10000 as @e[predicate=sheep_wars:utility/utility_type/slime_shield,distance=..500] at @s rotated as @s run function sheep_wars:utility/slime_shield/projectile/check/crude with entity @s

#powerup tick checks
execute positioned 10000 0 10000 as @e[predicate=sheep_wars:powerup/tick,distance=..500] at @s run function sheep_wars:powerup/tick/detect

#player checks: count pickup check
execute as @a[predicate=sheep_wars:player/alive] at @s run function sheep_wars:game/tick/tick_player
