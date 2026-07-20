
execute unless entity @e[type=armor_stand,predicate=sheep_wars:score/sort/kills_test/do_count] run return run function sheep_wars:game/end/leaderboard/kills_test/global/report
execute store result score #total sort.count if entity @e[type=armor_stand,predicate=sheep_wars:score/sort/kills_test/do_count]

execute as @e[type=armor_stand] at @s if predicate sheep_wars:score/sort/kills_test/do_count run function sheep_wars:game/end/leaderboard/kills_test/player/sort with entity @s