
execute unless entity @e[type=armor_stand,predicate=sheep_wars:score/sort/kills/do_count] run return run say all done
execute store result score #total sort.count if entity @e[type=armor_stand,predicate=sheep_wars:score/sort/kills/do_count]

execute as @e[type=armor_stand] if predicate sheep_wars:score/sort/kills/do_count run function sheep_wars:game/end/leaderboard/kills/player/sort with entity @s