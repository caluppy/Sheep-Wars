
##check if projectile in bounds in relation to shield

#crude check, if pass do fine check

scoreboard players set @s projectile.bounce 0
execute unless entity @e[predicate=sheep_wars:projectile/properties/do_collision,distance=..3.5] run return fail

#fine check if pass apply bounce motion tag
execute store success score @s projectile.bounce positioned ^ ^1 ^0.3 as @e[predicate=sheep_wars:projectile/properties/do_collision,distance=..1.3] run scoreboard players set @s projectile.bounce 7
execute store success score @s projectile.bounce positioned ^ ^-1 ^0.3 as @e[predicate=sheep_wars:projectile/properties/do_collision,distance=..1.3] run scoreboard players set @s projectile.bounce 7

execute store success score @s projectile.bounce positioned ^-2 ^1 ^0.3 as @e[predicate=sheep_wars:projectile/properties/do_collision,distance=..1.3] run scoreboard players set @s projectile.bounce 7
execute store success score @s projectile.bounce positioned ^-2 ^-1 ^0.3 as @e[predicate=sheep_wars:projectile/properties/do_collision,distance=..1.3] run scoreboard players set @s projectile.bounce 7

execute store success score @s projectile.bounce positioned ^2 ^1 ^0.3 as @e[predicate=sheep_wars:projectile/properties/do_collision,distance=..1.3] run scoreboard players set @s projectile.bounce 7
execute store success score @s projectile.bounce positioned ^2 ^-1 ^0.3 as @e[predicate=sheep_wars:projectile/properties/do_collision,distance=..1.3] run scoreboard players set @s projectile.bounce 7

execute if score @s projectile.bounce matches 1 at @s run function sheep_wars:utility/slime_shield/projectile/bounce/start_front