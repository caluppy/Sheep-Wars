
##called after player dismount recognisted in tick to convert to projectile
#kills armorstand (currently not friendly to multiple armor stands | easy fix probs)
#converts ridable to projectile and adds success count for projectile ticking
#resets player riding status


$kill @n[predicate=sheep_wars:projectile/clean/riding_motion_marker,name=$(playerUUID)]

tag @s remove sheep_wars.ridable
tag @s add sheep_wars.motion.linear

$scoreboard players set @p[scores={player_UUID_0=$(playerUUID)}] new_projectile.is_riding -3

schedule function sheep_wars:projectile/schedule/dismount_cooldown 1t
scoreboard players set @s new_projectile.motion_success 1
