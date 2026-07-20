
tag @s remove sheep_wars.score.sorted
tag @s remove sheep_wars.score.less
scoreboard players set @s sort.order.kills 1

scoreboard players operation @s sort.count = @s kills

function sheep_wars:game/end/leaderboard/kills_test/player/sort