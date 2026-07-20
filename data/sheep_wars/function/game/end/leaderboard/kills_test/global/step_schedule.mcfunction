
execute as @e[type=armor_stand,predicate=!sheep_wars:score/sort/kills_test/sorted] run function sheep_wars:game/end/leaderboard/kills_test/player/step with entity @s