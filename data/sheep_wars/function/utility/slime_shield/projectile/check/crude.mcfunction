
##crude check projectile and time function for slime shield
#essentially check times every second
#check entities within crude radius every tick
#iff bouncable entity in radius does specific check

execute if score tick time matches 20 run function sheep_wars:utility/slime_shield/projectile/check/time

execute unless entity @e[predicate=sheep_wars:projectile/properties/do_collision,distance=..4] run return fail

execute positioned ^ ^ ^1 if entity @e[predicate=sheep_wars:projectile/properties/do_collision,distance=..3.5] run function sheep_wars:utility/slime_shield/projectile/check/front
execute positioned ^ ^ ^-1 if entity @e[predicate=sheep_wars:projectile/properties/do_collision,distance=..3.5] run function sheep_wars:utility/slime_shield/projectile/check/back