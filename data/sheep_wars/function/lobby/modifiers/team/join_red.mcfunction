
## if attack or interact join team
#triggered as player

execute if predicate sheep_wars:player/team_red run return fail

team join sheep_wars.red @s
title @s actionbar {"text":"Joined Red Team","color":"red"}

item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},dyed_color=16711680,tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s armor.legs with leather_leggings[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},dyed_color=16711680,tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s armor.feet with leather_boots[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},dyed_color=16711680,tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]

function sheep_wars:lobby/scoreboard_display/team