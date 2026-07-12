
##start of game end sequence w/ blue win

effect give @a[predicate=sheep_wars:player/team_blue] resistance 20 255 true

title @a[predicate=sheep_wars:player/on_team] title [{"text":"Blue Team Wins!","color":"blue","bold":true}]

scoreboard players set #map time 10
function sheep_wars:game/end/loop_1s/schedule