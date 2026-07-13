
##gamemode options

scoreboard players set §§ sheep_wars.display 2

execute if score #gamemode sheep_wars.options matches 0 run team modify display.lobby.gamemode suffix {"text":"Random","color":"green"}
execute if score #gamemode sheep_wars.options matches 1 run team modify display.lobby.gamemode suffix {"text":"Default","color":"green"}