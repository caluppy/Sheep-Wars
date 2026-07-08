
##setup for team assigning for sheep wars
#helmet handles base attributes, want to add potential for kits in future
#not implemented yet but need to add easy porting for pick functions depending on kit and team

team join sheep_wars.blue @s

#generic armor
item replace entity @s armor.head with leather_helmet[unbreakable={},lore=[{"text":""},{"text":"When on Head","color":"gray","italic":false},{"text":"+1 Armor","color":"blue","italic":false}],attribute_modifiers=[{id:"armor",type:"armor",amount:1,operation:"add_value"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",display:{type:"hidden"},operation:"add_value",amount:-250}],enchantment_glint_override=false,enchantments={blast_protection:10,protection:5,binding_curse:1},dyed_color=2490623,tooltip_display={hidden_components:[enchantments,"attribute_modifiers","dyed_color",unbreakable]}]
item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},dyed_color=2490623,tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s armor.legs with leather_leggings[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},dyed_color=2490623,tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s armor.feet with leather_boots[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},dyed_color=2490623,tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]

item replace entity @s hotbar.8 with light_blue_terracotta 10

#invoke kit specific items here
#give blocks

#tp into map
tp @s 10000 -35 10032 180 0
execute as @s at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1