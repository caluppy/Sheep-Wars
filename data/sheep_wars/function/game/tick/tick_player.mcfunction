
execute if predicate sheep_wars:player/death unless predicate sheep_wars:player/win run function sheep_wars:game/death/detect

##scans for right click on useful items then resets right click score
execute if predicate sheep_wars:player/using_summons_projectile run function sheep_wars:projectile/summon_sheep/layer_1 with entity @s
execute if predicate sheep_wars:player/using_utility run function sheep_wars:utility/layer_1 with entity @s

execute if score @s count >= #20 constants at @s as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{right_click:true}}}},distance=..3.5] run data merge entity @s {PickupDelay:2s}

execute if predicate sheep_wars:player/win if score @s new_projectile.cooldown matches 3.. run scoreboard players set @s new_projectile.cooldown 3
execute if score @s new_projectile.cooldown > #0 constants run scoreboard players remove @s new_projectile.cooldown 1
scoreboard players set @s right.click 0

