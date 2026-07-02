
#for low priority resets at 1 check per second
#kills projectiles out of range and checks if armor stands have lost their riding.sheep


execute as @a[tag=sheep_wars_player] at @s run execute as @e[predicate=sheep_wars:do_clean,distance=50..] run data merge entity @s {DeathLootTable:"minecraft:empty"}
execute as @a[tag=sheep_wars_player] at @s run kill @e[predicate=sheep_wars:do_clean,distance=50..]
execute as @e[predicate=sheep_wars:projectile/riding_motion_marker] run function sheep_wars:cleanup/cleanup_motion_marker with entity @s data

#resets player fall damage after riding sheep if touching ground
execute as @a[tag=sheep_wars_player] if data entity @s {OnGround:1b} run attribute @s fall_damage_multiplier base reset


schedule function sheep_wars:cleanup/cleanup 1s