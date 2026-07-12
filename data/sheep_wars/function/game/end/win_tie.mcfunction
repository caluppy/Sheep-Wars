
##for rare instance when both teams =0

title @a[predicate=sheep_wars:player/on_team] title [{"text":"Its a... Tie?","color":"dark_gray","bold":true}]

scoreboard players set #map time 10
function sheep_wars:game/end/loop_1s/schedule