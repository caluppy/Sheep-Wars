
execute if predicate sheep_wars:powerup/slime_shield as @n[predicate=sheep_wars:player/alive,distance=..2] run function sheep_wars:utility/slime_shield/summon_item


playsound block.beacon.power_select master @a[distance=..100] ~ ~ ~ 1 2 0.5
tellraw @a[predicate=sheep_wars:player/alive] [{"selector":"@n[predicate=sheep_wars:player/alive,distance=..2]"},{"text":" acquired a ","color":"green"},{"text":"?","obfuscated":true,"color":"dark_purple"},{"text":"powerup","color":"light_purple","obfuscated":false,shadow_color:-11270819},{"text":"?","obfuscated":true,"color":"dark_purple"}]

execute on passengers run kill @s
kill @s