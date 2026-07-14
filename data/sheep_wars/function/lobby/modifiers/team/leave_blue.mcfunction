
## if attack leave team
#triggered as player

execute unless predicate sheep_wars:player/team_blue run return fail

team leave @s
title @s actionbar {"text":"Left Blue Team","color":"blue"}
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1

item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

function sheep_wars:lobby/scoreboard_display/team