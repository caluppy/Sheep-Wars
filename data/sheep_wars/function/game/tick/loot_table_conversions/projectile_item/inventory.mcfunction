
##tests for type of summonable then initiates next layer
#next layer replaces with correct item and clears wrong one

execute if items entity @s container.* white_dye[custom_data~{projectile_item:true}] run function sheep_wars:game/tick/loot_table_conversions/projectile_item/inventory_type/white_dye
execute if items entity @s container.* green_dye[custom_data~{projectile_item:true}] run function sheep_wars:game/tick/loot_table_conversions/projectile_item/inventory_type/green_dye
execute if items entity @s container.* light_blue_dye[custom_data~{projectile_item:true}] run function sheep_wars:game/tick/loot_table_conversions/projectile_item/inventory_type/light_blue_dye
execute if items entity @s container.* gray_dye[custom_data~{projectile_item:true}] run function sheep_wars:game/tick/loot_table_conversions/projectile_item/inventory_type/gray_dye
