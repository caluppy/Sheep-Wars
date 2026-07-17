
title @s actionbar [{"text":"Teleporting to lobby","color":"red"}]
clear @s
effect clear @s
gamemode adventure @s
tag @s remove sheep_wars.player.win
effect give @s instant_health infinite 10 true
effect give @s saturation infinite 255 true
effect give @s resistance infinite 255 true

tp @s 10000 41 10000 0 0