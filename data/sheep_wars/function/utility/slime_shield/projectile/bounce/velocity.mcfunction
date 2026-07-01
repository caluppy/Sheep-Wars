
##applies velocity calcs

execute as @s run particle item_slime ^ ^ ^-0.5 0.1 0.1 0.1 1 30 force

execute store result score @s previous.position.x run data get entity @s Pos[0] 1000
execute store result score @s previous.position.y run data get entity @s Pos[1] 1000
execute store result score @s previous.position.z run data get entity @s Pos[2] 1000

##velocity modifiable with if statements
execute if entity @s[predicate=sheep_wars:score/projectile_bounce/neg1] run function sheep_wars:utility/slime_shield/projectile/bounce/flip_rotation with entity @s

tp @s[predicate=sheep_wars:score/projectile_bounce/pos1] ^ ^ ^1

#final pos
execute store result score @s position.x run data get entity @s Pos[0] 1000
execute store result score @s position.y run data get entity @s Pos[1] 1000
execute store result score @s position.z run data get entity @s Pos[2] 1000

#store subtraction as vel  
execute store result score @s velocity.x run scoreboard players operation @s position.x -= @s previous.position.x
execute store result score @s velocity.y run scoreboard players operation @s position.y -= @s previous.position.y
execute store result score @s velocity.z run scoreboard players operation @s position.z -= @s previous.position.z

execute store result entity @s Motion[0] double 0.003 run scoreboard players get @s velocity.x
execute store result entity @s Motion[1] double 0.004 run scoreboard players get @s velocity.y
execute store result entity @s Motion[2] double 0.003 run scoreboard players get @s velocity.z

schedule function sheep_wars:utility/slime_shield/projectile/cooldown/schedule 1t replace