
##iron sword w/ shield
#iron chestplate
#crossbow 5 arrows (nonrestocking)
#copper pick


item replace entity @s hotbar.0 with iron_sword[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},attribute_modifiers=[{type:"attack_damage",id:"attack_damage","amount":4.5,display:{type:"override",value:{text:"5 Attack Damage","color":"dark_green"}},operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"attack_speed","amount":-2.4,display:{type:"override",value:{text:"1.6 Attack Speed","color":"dark_green"}},operation:"add_value",slot:"mainhand"}],tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s weapon.offhand with shield[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]

item replace entity @s hotbar.1 with copper_pickaxe[unbreakable={},tool={default_mining_speed:1,rules:[{blocks:"#mineable/pickaxe",speed:7},{blocks:"#minecraft:mineable/axe",speed:2}]},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s hotbar.2 with crossbow[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]

item replace entity @s inventory.0 with arrow 5

item replace entity @s armor.chest with iron_chestplate[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
