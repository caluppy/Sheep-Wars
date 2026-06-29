
#tick function for ridable projectiles using motion vectors
#needs armor stand double tagged with player and entity UUID[0] to handle multiple projectiles (handled in layer 2)
#stores ridable pos -> teleports armorstand by entity pos and player rot (entity has no pitch for some reason) -> subtract->vel -> apply to motion

scoreboard players set @s new_projectile.is_riding 0
scoreboard players set @s new_projectile.motion_success 0

#ridable pos and rot copy from player
execute store result score @s previous.position.x run data get entity @s Pos[0] 1000
execute store result score @s previous.position.y run data get entity @s Pos[1] 1000
execute store result score @s previous.position.z run data get entity @s Pos[2] 1000
execute store result entity @s Rotation[0] float 1 store success score @s new_projectile.is_riding on passengers run data get entity @s Rotation[0]
execute store result entity @s Rotation[1] float 1 on passengers store success score @s new_projectile.is_riding run data get entity @s Rotation[1]

#player riding check, if fail converts to normal projectile
execute if score @s new_projectile.is_riding matches 0 run return run execute at @s run function sheep_wars:projectile/summon_sheep/layer_3/ridable_dismount with entity @s data

#tp
$execute rotated as @p[scores={player_UUID_0=$(playerUUID)}] at @s run tp @n[predicate=sheep_wars:riding_motion_marker,scores={player_UUID_0=$(playerUUID),entity_UUID_0=$(entityUUID)}] ^ ^ ^0.5

#final pos -> vel -> motion
$execute store result score @s position.x run data get entity @n[predicate=sheep_wars:riding_motion_marker,scores={player_UUID_0=$(playerUUID),entity_UUID_0=$(entityUUID)}] Pos[0] 1000
$execute store result score @s position.y run data get entity @n[predicate=sheep_wars:riding_motion_marker,scores={player_UUID_0=$(playerUUID),entity_UUID_0=$(entityUUID)}] Pos[1] 1000
$execute store result score @s position.z run data get entity @n[predicate=sheep_wars:riding_motion_marker,scores={player_UUID_0=$(playerUUID),entity_UUID_0=$(entityUUID)}] Pos[2] 1000

execute store result score @s velocity.x run scoreboard players operation @s position.x -= @s previous.position.x
execute store result score @s velocity.y run scoreboard players operation @s position.y -= @s previous.position.y
execute store result score @s velocity.z run scoreboard players operation @s position.z -= @s previous.position.z

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s velocity.x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s velocity.y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s velocity.z

#tnt scheduling cant be done with schedule without unnessicary selectors so done with scoreboard tick
scoreboard players add @s[tag=sheep_wars.type.carpet_bomb] new_projectile.cooldown 1
execute if score @s[tag=sheep_wars.type.carpet_bomb] new_projectile.cooldown matches 40 as @s at @s run function sheep_wars:projectile/schedule/carpet_bomb


execute at @s run particle small_flame ^ ^-0.5 ^-1 0.3 -0.2 0.3 0.01 3