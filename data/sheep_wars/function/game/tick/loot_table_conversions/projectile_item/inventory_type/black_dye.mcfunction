
##gives correct item and clears loot table one

clear @s black_dye[custom_data~{projectile_item:true}] 1
give @s black_dye[item_model="minecraft:black_wool",consumable={consume_seconds:2147483647},custom_data={right_click:true},item_name={"text":"Black Hole Sheep","color":"black",shadow_color:-7654211,"bold":true}] 1
