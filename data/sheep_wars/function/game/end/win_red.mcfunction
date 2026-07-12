
##start of game end sequence w/ red win

effect give @a[predicate=sheep_wars:player/team_red] resistance 20 255 true

title @a[predicate=sheep_wars:player/on_team] title [{"text":"Red Team Wins!","color":"red","bold":true}]

scoreboard players set #map time 10
function sheep_wars:game/end/loop_1s/schedule