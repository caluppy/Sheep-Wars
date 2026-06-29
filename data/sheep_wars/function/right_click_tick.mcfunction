
##scans for right click on useful items then resets right click score

execute as @a[predicate=sheep_wars:using_summons_projectile] run function sheep_wars:projectile/summon_sheep/layer_1 with entity @s
execute as @a[predicate=sheep_wars:using_utility] run function sheep_wars:utility/layer_1 with entity @s


scoreboard players set @a[tag=sheep_wars_player] right.click 0
scoreboard players remove @a[tag=sheep_wars_player,scores={new_projectile.cooldown=1..}] new_projectile.cooldown 1