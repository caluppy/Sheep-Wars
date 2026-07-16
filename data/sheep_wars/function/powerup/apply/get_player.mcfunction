
execute store result score @s sheep_wars.background run scoreboard players get @n[predicate=sheep_wars:powerup/tick,distance=..3] sheep_wars.background

$execute if score @s sheep_wars.background matches 1 as @a[scores={player_UUID_0=$(playerUUID)},limit=1] run function sheep_wars:utility/slime_shield/summon_item


playsound block.beacon.power_select master @a[distance=..100] ~ ~ ~ 1 2 0.5
tellraw @a[predicate=sheep_wars:player/alive] [{"selector":"@n[predicate=sheep_wars:player/alive,distance=..2]"},{"text":" acquired a ","color":"green"},{"text":"?","obfuscated":true,"color":"dark_purple"},{"text":"powerup","color":"light_purple","obfuscated":false,shadow_color:-11270819},{"text":"?","obfuscated":true,"color":"dark_purple"}]

execute as @n[predicate=sheep_wars:powerup/tick,distance=..3] on passengers run kill @s
kill @n[predicate=sheep_wars:powerup/tick,distance=..3]

execute if predicate sheep_wars:projectile/properties/do_explode at @s run return run function sheep_wars:projectile/tick/trigger/explode with entity @s data

$summon tnt ~ ~ ~ {fuse:0,explosion_power:1,owner:$(owner)}

tp ~ -200 ~
kill @s