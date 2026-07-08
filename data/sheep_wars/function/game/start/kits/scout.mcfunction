
## lunge spear w/ fishing rod
#iron boots
#5 windcharges ?restock?
#copper pick


item replace entity @s hotbar.0 with iron_spear[unbreakable={},enchantment_glint_override=false,enchantments={lunge:2},attribute_modifiers=[{type:"attack_damage",id:"attack_damage","amount":2,display:{type:"override",value:{text:"2 Attack Damage","color":"dark_green"}},operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"attack_speed","amount":-2.7,display:{type:"override",value:{text:"1.3 Attack Speed","color":"dark_green"}},operation:"add_value",slot:"mainhand"}],tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s weapon.offhand with fishing_rod[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]

item replace entity @s hotbar.1 with copper_pickaxe[unbreakable={},tool={default_mining_speed:1,rules:[{blocks:"#mineable/pickaxe",speed:7},{blocks:"#minecraft:mineable/axe",speed:2}]},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s hotbar.7 with wind_charge 5


item replace entity @s armor.feet with iron_boots[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
