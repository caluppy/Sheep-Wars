
execute if predicate sheep_wars:powerup/slime_shield as @n[predicate=sheep_wars:player/alive,distance=..2] run function sheep_wars:utility/slime_shield/summon_item
execute if predicate sheep_wars:powerup/carpet_squid as @n[predicate=sheep_wars:player/alive,distance=..2] run function sheep_wars:projectile/summon_type/summon_item/ride_carpet_squid
execute if predicate sheep_wars:powerup/magentalamb as @n[predicate=sheep_wars:player/alive,distance=..2] run function sheep_wars:projectile/summon_type/summon_item/magentalamb
execute if predicate sheep_wars:powerup/air_strike as @n[predicate=sheep_wars:player/alive,distance=..2] run function sheep_wars:projectile/summon_type/summon_item/air_strike
execute if predicate sheep_wars:powerup/explosive_arrows as @n[predicate=sheep_wars:player/alive,distance=..2] run function sheep_wars:powerup/apply/type/explosive_arrows
execute if predicate sheep_wars:powerup/faster_spawns as @n[predicate=sheep_wars:player/alive,distance=..2] run function sheep_wars:powerup/apply/type/faster_spawns
execute if predicate sheep_wars:powerup/regeneration as @n[predicate=sheep_wars:player/alive,distance=..2] run function sheep_wars:powerup/apply/type/regeneration


playsound block.beacon.power_select master @a[distance=..100] ~ ~ ~ 1 2 0.5
tellraw @a[predicate=sheep_wars:player/alive] [{"selector":"@n[predicate=sheep_wars:player/alive,distance=..2]"},{"text":" acquired a ","color":"green"},{"text":"?","obfuscated":true,"color":"dark_purple"},{"text":"powerup","color":"light_purple","obfuscated":false,shadow_color:-11270819},{"text":"?","obfuscated":true,"color":"dark_purple"}]

execute on passengers run kill @s
kill @s