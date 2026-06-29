
##called after player dismount recognisted in tick to convert to projectile
#kills armorstand (currently not friendly to multiple armor stands | easy fix probs)
#converts ridable to projectile and adds success count for projectile ticking
#resets player riding status


$kill @n[predicate=sheep_wars:riding_motion_marker,name=$(playerUUID)]

tag @s remove sheep_wars.ridable
tag @s add sheep_wars.motion.linear

scoreboard players set @s new_projectile.motion_success 1
$scoreboard players set @p[scores={player_UUID_0=$(playerUUID)}] new_projectile.is_riding 0