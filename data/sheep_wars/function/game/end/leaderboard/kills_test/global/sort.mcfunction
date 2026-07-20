
scoreboard players operation #total.previous sort.count = #total sort.count
execute store result score #total sort.count if entity @e[type=armor_stand,predicate=sheep_wars:score/sort/kills_test/do_count]
execute if score #total.previous sort.count = #total sort.count run return run function sheep_wars:game/end/leaderboard/kills_test/global/step_schedule

execute as @e[type=armor_stand] at @s if predicate sheep_wars:score/sort/kills_test/do_count run function sheep_wars:game/end/leaderboard/kills_test/player/sort