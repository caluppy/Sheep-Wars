
##picks display name based 

scoreboard players set § sheep_wars.display 5

execute if score #map sheep_wars.options matches 0 run team modify display.lobby.map suffix {"text":"Random","color":"green"}
execute if score #map sheep_wars.options matches 1 run team modify display.lobby.map suffix {"text":"Castle","color":"green"}