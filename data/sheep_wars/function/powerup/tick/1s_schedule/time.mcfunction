
#applies cosmetics and ticks time on slow loop
#detect needs to be ticked 20/s

execute if predicate sheep_wars:score/time/lessequal_0 on passengers run kill @s
execute if predicate sheep_wars:score/time/lessequal_0 run return run kill @s

execute if score @s count matches 0 if predicate sheep_wars:powerup/new as @s run function sheep_wars:powerup/tick/1s_schedule/rotate_start

scoreboard players remove @s time 1
scoreboard players add @s count 1

execute if score @s count matches 2 run function sheep_wars:powerup/tick/1s_schedule/rotate_1
execute if score @s count matches 4 run function sheep_wars:powerup/tick/1s_schedule/rotate_2
execute if score @s count matches 6 run function sheep_wars:powerup/tick/1s_schedule/rotate_3
execute if score @s count matches 8 run function sheep_wars:powerup/tick/1s_schedule/rotate_4

execute unless predicate sheep_wars:powerup/new run particle dust_color_transition{from_color:715847,to_color:1538872,scale:2} ~ ~ ~ 0.7 0.7 0.7 0.01 10
execute unless predicate sheep_wars:powerup/new run particle end_rod ~ ~ ~ 0.6 0.6 0.6 0.01 4
