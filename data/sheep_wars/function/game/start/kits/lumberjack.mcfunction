
##iron axe w/ shield
#iron chestplate
#crossbow 5 arrows (nonrestocking)
#copper pick


item replace entity @s hotbar.0 with iron_axe[unbreakable={},tool={default_mining_speed:1,rules:[{blocks:"#mineable/pickaxe",speed:7},{blocks:"#minecraft:mineable/axe",speed:5}]},enchantment_glint_override=false,enchantments={binding_curse:1},attribute_modifiers=[{type:"attack_damage",id:"attack_damage","amount":7,display:{type:"override",value:{text:"7.5 Attack Damage","color":"dark_green"}},operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"attack_speed","amount":-3,display:{type:"override",value:{text:"1 Attack Speed","color":"dark_green"}},operation:"add_value",slot:"mainhand"}],tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s weapon.offhand with shield[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]

item replace entity @s hotbar.1 with crossbow[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]

item replace entity @s inventory.0 with arrow 5

item replace entity @s armor.legs with copper_leggings[unbreakable={},attribute_modifiers=[{id:armor,type:"armor",amount:4,operation:"add_value","slot":"legs"}],enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s armor.feet with copper_boots[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
