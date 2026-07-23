
##setup for team assigning for sheep wars
#helmet handles base attributes, want to add potential for kits in future
#not implemented yet but need to add easy porting for pick functions depending on kit and team

#generic armor
item replace entity @s armor.head with leather_helmet[unbreakable={},lore=[{"text":""},{"text":"When on Head","color":"gray","italic":false},{"text":"+1 Armor","color":"blue","italic":false}],attribute_modifiers=[{id:"armor",type:"armor",amount:1,operation:"add_value"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",operation:"add_value",amount:-250}],enchantment_glint_override=false,enchantments={blast_protection:10,protection:5,binding_curse:1},tooltip_display={hidden_components:[enchantments,"attribute_modifiers","dyed_color",unbreakable]}]
item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s armor.legs with leather_leggings[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]
item replace entity @s armor.feet with leather_boots[unbreakable={},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments,"dyed_color",unbreakable]}]

item replace entity @s hotbar.8 with light_gray_terracotta 10

#invoke kit specific items here
function sheep_wars:game/start/kits/get

#tp into map
tp @s @n[predicate=sheep_wars:game/spawner/conditional,limit=1,sort=random]
execute facing 10000 0 10000 run rotate @s ~ 0

execute as @s at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1