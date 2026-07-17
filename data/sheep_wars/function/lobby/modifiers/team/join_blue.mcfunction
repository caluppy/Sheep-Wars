
## if interact join team
#triggered as player

tag @s add sheep_wars.player
execute if predicate sheep_wars:player/team_blue run return fail

team join sheep_wars.blue @s
title @s actionbar {"text":"Joined Blue Team","color":"blue"}

item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},dyed_color=2490623,tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s armor.legs with leather_leggings[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},dyed_color=2490623,tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s armor.feet with leather_boots[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},dyed_color=2490623,tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]

function sheep_wars:lobby/scoreboard_display/team