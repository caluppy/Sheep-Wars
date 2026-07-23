

scoreboard players add @s count 1
execute if score tick time matches 19 run function sheep_wars:projectile/tick/trigger/effect/time with entity @s data

execute if score @s count >= #3 constants if predicate sheep_wars:projectile/summon_type/magentalamb run function sheep_wars:projectile/tick/trigger/effect/type/magentalamb with entity @s data

##1t effects
$execute if predicate sheep_wars:projectile/summon_type/black_hole_sheep as @a[predicate=sheep_wars:player/alive,distance=..10] unless score @s player_UUID_0 matches $(playerUUID) at @s run function sheep_wars:projectile/tick/trigger/effect/type/black_hole

execute if predicate sheep_wars:score/time/moreequal_0 run schedule function sheep_wars:projectile/tick/trigger/effect/schedule_1t 1t replace