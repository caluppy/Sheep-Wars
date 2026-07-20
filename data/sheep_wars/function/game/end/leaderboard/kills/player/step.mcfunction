
execute unless predicate sheep_wars:score/sort/kills/less run tag @s add sheep_wars.score.sorted
execute if predicate sheep_wars:score/sort/kills/less run scoreboard players add @s sort.order.kills 1

tag @s remove sheep_wars.score.less

schedule function sheep_wars:game/end/leaderboard/kills/global/step 1t replace