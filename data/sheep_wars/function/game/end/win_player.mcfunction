
##start of game end sequence w/ red win

effect give @a[predicate=sheep_wars:player/alive] resistance 20 255 true
tag @a[predicate=sheep_wars:player/alive] add sheep_wars.player.win

execute as @a[predicate=sheep_wars:player/on_team] at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 1 1
title @a[predicate=sheep_wars:player/on_team] title [{"selector":"@a[predicate=sheep_wars:player/win]"},{"text":" Wins!","color":"green","bold":true}]

function sheep_wars:game/end/leaderboard/kills/global/setup

scoreboard players set #map time 10
function sheep_wars:game/end/loop_1s/schedule