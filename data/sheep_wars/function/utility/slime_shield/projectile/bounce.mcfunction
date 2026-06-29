
##teleports and changes rotation for new velocity calculation and uses projectile bounce as cooldown function
#predicate for this is motion_bounce for somereason isnt working, been having a super hard time with these predicates
# using following command for selector debugging 

tellraw @a {"selector":"@e[scores={projectile.bounce=1..},type=!interaction,distance=..3.5]"}

#velocity setting
execute positioned as @e[scores={projectile.bounce=1..},type=!interaction,distance=..3.5] run tp @e[scores={projectile.bounce=1..},type=!interaction,distance=..3.5] ~ ~ ~ ~ ~
playsound minecraft:block.slime_block.fall master @a[tag=sheep_wars_player,distance=..50] ~ ~ ~ 1 0.7 0.5

execute as @e[scores={projectile.bounce=1..},type=!interaction,distance=..3.5] at @s run function sheep_wars:utility/slime_shield/projectile/velocity with entity @s