
##runs tick commands to trigger effect types when needed
#black hole sheep every tick
#potion effect sheep every 20 ticks in time function

execute as @e[predicate=sheep_wars:projectile/properties/effect_active] at @s run function sheep_wars:projectile/tick/trigger/effect/type/generic
