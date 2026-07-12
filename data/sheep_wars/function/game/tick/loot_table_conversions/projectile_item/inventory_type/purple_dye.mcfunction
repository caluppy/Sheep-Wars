
##gives correct item and clears loot table one

clear @s purple_dye[custom_data~{projectile_item:true}] 1
give @s purple_dye[item_model="minecraft:purple_wool",consumable={consume_seconds:2147483647},custom_data={right_click:true},item_name={"text":"Slow Sheep","color":"dark_purple","bold":true}] 1
