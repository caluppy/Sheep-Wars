
##other options

scoreboard players set Spawns: sheep_wars.display 0

execute if score #spawnrate sheep_wars.options matches 0 run team modify display.lobby.spawnrate suffix {"text":" Random","color":"green"}
execute if score #spawnrate sheep_wars.options matches 1 run team modify display.lobby.spawnrate suffix {"text":" Fast","color":"green"}
execute if score #spawnrate sheep_wars.options matches 2 run team modify display.lobby.spawnrate suffix {"text":" Normal","color":"green"}
execute if score #spawnrate sheep_wars.options matches 3 run team modify display.lobby.spawnrate suffix {"text":" Slow","color":"green"}
