
$execute if score @s sort.count < @e[type=armor_stand,sort=random,limit=1,predicate=sheep_wars:score/sort/kills/do_count,name=!$(CustomName)] sort.count run tag @s add sheep_wars.score.less

schedule function sheep_wars:game/end/leaderboard/kills/global/sort 1t replace

say sort