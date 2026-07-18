
##gamemode options

scoreboard players set §§ sheep_wars.display 2

execute if score #gamemode sheep_wars.options matches 0 run team modify display.lobby.gamemode suffix {"text":"Random","color":"gold"}
execute if score #gamemode sheep_wars.options matches 1 run team modify display.lobby.gamemode suffix {"text":"Default","color":"green"}
execute if score #gamemode sheep_wars.options matches 2 run team modify display.lobby.gamemode suffix {"text":"Spleef","color":"green"}