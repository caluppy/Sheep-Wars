
#unused teleport movement ver of ridable sheep, keeping as it is WAY more efficient and does not require an armor stand to function

scoreboard players set @s new_projectile.motion_success 0

#sets prev pos and copies player rotation
execute store result score @s previous.position.x run data get entity @s Pos[0] 1000
execute store result score @s previous.position.y run data get entity @s Pos[1] 1000
execute store result score @s previous.position.z run data get entity @s Pos[2] 1000
execute store result entity @s Rotation[0] float 1 store success score @s new_projectile.motion_success on passengers run data get entity @s Rotation[0]
execute store result entity @s Rotation[1] float 1 on passengers store success score @s new_projectile.is_riding run data get entity @s Rotation[1]

#check for riding player if no converts to normal projectile
execute if score @s new_projectile.motion_success matches 0 run return run execute at @s run function sheep_wars:projectile/summon_sheep/layer_3_transfer_dismount with entity @s data

tp @s ^ ^ ^0.5

#get final pos and subtracts for velocity and applies to motion, probably not rlly needed either as teleport does all the work
execute store result score @s position.x run data get entity @s Pos[0] 1000
execute store result score @s position.y run data get entity @s Pos[1] 1000
execute store result score @s position.z run data get entity @s Pos[2] 1000
execute store result score @s velocity.x run scoreboard players operation @s position.x -= @s previous.position.x
execute store result score @s velocity.y run scoreboard players operation @s position.y -= @s previous.position.y
execute store result score @s velocity.z run scoreboard players operation @s position.z -= @s previous.position.z

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s velocity.x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s velocity.y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s velocity.z
execute at @s run particle small_flame ^ ^-0.5 ^-1 0.3 -0.2 0.3 0.01 3