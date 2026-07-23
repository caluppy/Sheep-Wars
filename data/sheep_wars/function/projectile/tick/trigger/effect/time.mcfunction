execute at @s if predicate sheep_wars:projectile/touching_barrier run scoreboard players set @s time 0

execute if entity @s[predicate=sheep_wars:score/time/lessequal_0] on passengers run kill @s
execute if entity @s[predicate=sheep_wars:score/time/lessequal_0] run return run kill @s

execute if predicate sheep_wars:projectile/summon_type/heal_sheep at @s run function sheep_wars:projectile/tick/trigger/effect/type/heal with entity @s data
execute if predicate sheep_wars:projectile/summon_type/slow_sheep at @s run function sheep_wars:projectile/tick/trigger/effect/type/slow with entity @s data


scoreboard players remove @s time 1

execute on passengers run execute store result score @s time on vehicle run scoreboard players get @s time
execute on passengers run data merge entity @s {text:[{"score":{name:"@s",objective:"time"},"color":"gold"},{"text":"s","color":"red"}]}