
scoreboard players operation #total.previous sort.count = #total sort.count
execute store result score #total sort.count if entity @e[predicate=sheep_wars:score/sort/kills/do_count]
execute if score #total.previous sort.count = #total sort.count run return run function sheep_wars:game/end/leaderboard/kills/global/step_schedule

execute as @e[predicate=sheep_wars:score/sort/kills/do_count] at @s run function sheep_wars:game/end/leaderboard/kills/player/sort