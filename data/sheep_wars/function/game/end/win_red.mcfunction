
##start of game end sequence w/ red win

effect give @a[predicate=sheep_wars:player/team_red] resistance 20 255 true
tag @a[predicate=sheep_wars:player/team_blue] add sheep_wars.player.win

playsound minecraft:item.goat_horn.sound.1 master @a[predicate=sheep_wars:player/on_team] ~ ~ ~ 1 1
title @a[predicate=sheep_wars:player/on_team] title [{"text":"Red Team Wins!","color":"red","bold":true}]

scoreboard players set #map time 10
function sheep_wars:game/end/loop_1s/schedule