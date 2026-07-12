
##teleports back to lobby, resets what needs to be reset and stuff idk

title @s actionbar [{"text":"Teleporting to lobby","color":"red"}]
clear @s
effect clear @s
gamemode adventure @s
tag @s remove sheep_wars_player

tp @s 10000 41 10000 ~ 90
