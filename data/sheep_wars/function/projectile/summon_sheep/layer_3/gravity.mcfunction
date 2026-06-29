
##triggered after sheep type summmoned, sets player owner and calculates player facing velocity for motion tick function

#copying player UUID for ownership tracking and entity uniqueness before teleporting to add direction
#execute store result score @s player_UUID_0 run data get entity @s data.playerUUID
$scoreboard players set @s player_UUID_0 $(playerUUID)
$scoreboard players set @s entity_UUID_0 $(entityUUID)

#sets position -> deltaposition=velocity/tick
execute store result score @s previous.position.x run data get entity @s Pos[0] 1000
execute store result score @s previous.position.y run data get entity @s Pos[1] 1000
execute store result score @s previous.position.z run data get entity @s Pos[2] 1000

execute positioned ~ ~2 ~ run tp @s ^ ^ ^1

#final pos
execute store result score @s position.x run data get entity @s Pos[0] 1000
execute store result score @s position.y run data get entity @s Pos[1] 1000
execute store result score @s position.z run data get entity @s Pos[2] 1000

#store subtraction as vel  
execute store result score @s velocity.x run scoreboard players operation @s position.x -= @s previous.position.x
execute store result score @s velocity.y run scoreboard players operation @s position.y -= @s previous.position.y
execute store success score @s new_projectile.motion_success store result score @s velocity.z run scoreboard players operation @s position.z -= @s previous.position.z

#bounding velocity to be under 10 in all directions pretty sure this is unnessisary as player movement no longer affects velocity calculations
# is now calculated with self references only
scoreboard players set @s[scores={velocity.y=10000..}] velocity.y 10000
scoreboard players set @s[scores={velocity.y=..-10000}] velocity.y -10000

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s velocity.x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s velocity.y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s velocity.z

tag @s[scores={new_projectile.motion_success=1}] remove sheep_wars.projectile.new
