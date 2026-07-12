
##runs tick commands to trigger effect types when needed
#black hole sheep every tick
#potion effect sheep every 20 ticks
#timer text display change every 20 ticks

execute if score tick time matches 20 as @e[predicate=sheep_wars:projectile/properties/do_effect] if predicate sheep_wars:projectile/properties/effect_active run function sheep_wars:projectile/tick/trigger/effect/time

##effects (every 20 ticks)
execute if score tick time matches 20 as @e[predicate=sheep_wars:projectile/summon_type/heal_sheep] if predicate sheep_wars:projectile/properties/effect_active at @s run function sheep_wars:projectile/tick/trigger/effect/type/heal
execute if score tick time matches 20 as @e[predicate=sheep_wars:projectile/summon_type/slow_sheep] if predicate sheep_wars:projectile/properties/effect_active at @s run function sheep_wars:projectile/tick/trigger/effect/type/slow

##black hole team specific functions
execute as @e[predicate=sheep_wars:projectile/summon_type/black_hole_sheep] if predicate sheep_wars:projectile/properties/effect_active at @s as @a[predicate=sheep_wars:player/alive,distance=..10] at @s run function sheep_wars:projectile/tick/trigger/effect/type/black_hole


execute as @e[predicate=sheep_wars:projectile/properties/do_effect] if predicate sheep_wars:score/time/moreequal_0 run schedule function sheep_wars:projectile/tick/trigger/effect/schedule_1t 1t