
##diamond pick w/ flint and steel
#gold chestplate
#tnt 5 (restocking)


item replace entity @s hotbar.0 with diamond_pickaxe[unbreakable={},tool={default_mining_speed:12,rules:[{blocks:"#mineable/pickaxe",speed:9},{blocks:"#minecraft:mineable/axe",speed:4}]},attribute_modifiers=[{type:"attack_damage",id:"attack_damage","amount":3.5,display:{type:"override",value:{text:"4 Attack Damage","color":"dark_green"}},operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"attack_speed","amount":-2.8,display:{type:"override",value:{text:"1.2 Attack Speed","color":"dark_green"}},operation:"add_value",slot:"mainhand"}],enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,unbreakable]}]
item replace entity @s weapon.offhand with flint_and_steel[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,unbreakable]}]
item replace entity @s hotbar.1 with tnt 5

item replace entity @s armor.chest with golden_chestplate[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
