
execute as @e[type=armor_stand,predicate=!sheep_wars:score/sort/kills/sorted] run function sheep_wars:game/end/leaderboard/kills/player/step with entity @s