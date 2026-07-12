
##gives correct item and clears loot table one

clear @s pink_dye[custom_data~{projectile_item:true}] 1
give @s pink_dye[item_model="minecraft:pink_wool",consumable={consume_seconds:2147483647},custom_data={right_click:true},item_name={"text":"Dr. Chungus","color":"light_purple","bold":true}] 1
