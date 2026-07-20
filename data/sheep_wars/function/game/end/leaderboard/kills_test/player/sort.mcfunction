
execute if score @s sort.count < @e[type=armor_stand,sort=random,limit=1,distance=0.001..,predicate=sheep_wars:score/sort/kills_test/do_count] sort.count run tag @s add sheep_wars.score.less

schedule function sheep_wars:game/end/leaderboard/kills_test/global/sort 1t replace

say sort