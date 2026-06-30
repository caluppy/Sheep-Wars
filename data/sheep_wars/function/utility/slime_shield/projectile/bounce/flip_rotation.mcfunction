
##flips rotation for vel calcs

execute store result score @s player.yaw run data get entity @s Rotation[0]
execute store result score @s player.pitch run data get entity @s Rotation[1]

execute store result entity @s Rotation[0] float 1 run scoreboard players operation @s player.yaw *= #-1 constants
execute store result entity @s Rotation[1] float 1 run scoreboard players operation @s player.pitch *= #-1 constants

tp @s ^ ^ ^-1