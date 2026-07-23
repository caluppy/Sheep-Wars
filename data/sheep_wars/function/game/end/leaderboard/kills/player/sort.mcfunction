
execute if score @s sort.count < @a[sort=random,limit=1,distance=0.001..,predicate=sheep_wars:score/sort/kills/do_count] sort.count run tag @s add sheep_wars.score.less

schedule function sheep_wars:game/end/leaderboard/kills/global/sort 1t replace