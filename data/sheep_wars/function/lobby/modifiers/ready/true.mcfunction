

## interact = ready
#triggered as player


execute if predicate sheep_wars:player/lobby_ready run return fail

tag @s add sheep_wars.player
tag @s add sheep_wars.player.ready
title @s actionbar {"text":"Ready!","color":"green"}
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.3 2

execute if entity @s[predicate=sheep_wars:player/team_red] run item replace entity @s armor.head with red_stained_glass[enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments]}]
execute if entity @s[predicate=sheep_wars:player/team_blue] run item replace entity @s armor.head with blue_stained_glass[enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments]}]

function sheep_wars:lobby/scoreboard_display/ready