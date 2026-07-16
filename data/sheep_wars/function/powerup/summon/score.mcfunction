
execute store result entity @s Pos[0] double 0.1 run random value 99750..100250
execute store result entity @s Pos[1] double -0.1 run random value 200..400

scoreboard players set @s time 60
scoreboard players set @s count 0

execute if entity @s[tag=sheep_wars.powerup.slime_shield] run scoreboard players set @s sheep_wars.background 1