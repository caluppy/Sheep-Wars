
##gives correct item and clears loot table one

clear @s green_dye[custom_data~{projectile_item:true}] 1
give @s green_dye[item_model="green_wool",consumable={consume_seconds:2147483647},custom_data={right_click:true},item_name={"text":"Sheep Mortar","color":"dark_green","bold":true}] 1
