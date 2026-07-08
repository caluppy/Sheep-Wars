
##gives correct item and clears loot table one

clear @s light_blue_dye[custom_data~{projectile_item:true}] 1
give @s light_blue_dye[item_model="minecraft:light_blue_wool",consumable={consume_seconds:2147483647},custom_data={right_click:true},item_name={"text":"Sheep Hang Glider","color":"blue","bold":true}] 1
