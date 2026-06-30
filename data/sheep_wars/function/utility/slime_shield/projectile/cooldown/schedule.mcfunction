
##for applying no motion for 1 second before returning to normal motion
#scheduled per tick and returns if no schedule recognised

execute as @e[predicate=sheep_wars:projectile_collision] unless score @s projectile.bounce matches 0 run function sheep_wars:utility/slime_shield/projectile/cooldown/function
execute if entity @e[predicate=sheep_wars:projectile_collision,scores={projectile.bounce=1..}] run schedule function sheep_wars:utility/slime_shield/projectile/cooldown/schedule 1t
execute if entity @e[predicate=sheep_wars:projectile_collision,scores={projectile.bounce=..1}] run schedule function sheep_wars:utility/slime_shield/projectile/cooldown/schedule 1t replace
