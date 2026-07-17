
## attack = unready
#triggered as player

execute unless predicate sheep_wars:player/lobby_ready run return fail

tag @s remove sheep_wars.player.ready
title @s actionbar {"text":"Ready Cancelled","color":"red"}
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.3 2

execute if entity @s[predicate=sheep_wars:player/team_red] run item replace entity @s armor.head with air
execute if entity @s[predicate=sheep_wars:player/team_blue] run item replace entity @s armor.head with air

function sheep_wars:lobby/scoreboard_display/ready