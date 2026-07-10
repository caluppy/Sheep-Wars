
##runs tick commands to trigger effect types when needed
#black hole sheep every tick
#potion effect sheep every 10 ticks
#timer text display change every 20 ticks

execute if score tick time matches 20 as @e[predicate=sheep_wars:projectile/properties/do_effect] if predicate sheep_wars:projectile/properties/effect_active run function sheep_wars:projectile/tick/trigger/effect/time

execute if score tick time matches 10 as @e[predicate=sheep_wars:projectile/summon_type/heal_sheep] if predicate sheep_wars:projectile/properties/effect_active at @s run function sheep_wars:projectile/tick/trigger/effect/type/heal
execute if score tick time matches 10 as @e[predicate=sheep_wars:projectile/summon_type/slow_sheep] if predicate sheep_wars:projectile/properties/effect_active at @s run function sheep_wars:projectile/tick/trigger/effect/type/slow

execute as @e[predicate=sheep_wars:projectile/properties/do_effect] if predicate sheep_wars:score/time/moreequal_0 run schedule function sheep_wars:projectile/tick/trigger/effect/schedule_1t 1t