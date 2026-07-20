
execute unless entity @e[predicate=sheep_wars:score/sort/kills/do_count] run return run function sheep_wars:game/end/leaderboard/kills/global/report
execute store result score #total sort.count if entity @e[predicate=sheep_wars:score/sort/kills/do_count]

execute as @e[predicate=sheep_wars:score/sort/kills/do_count] at @s run function sheep_wars:game/end/leaderboard/kills/player/sort