
##gives correct item and clears loot table one

clear @s white_dye[custom_data~{projectile_item:true}] 1
give @s white_dye[item_model="minecraft:white_wool",consumable={consume_seconds:2147483647},custom_data={right_click:true},item_name={"text":"Sheep Launcher","color":"green","bold":true}] 1
