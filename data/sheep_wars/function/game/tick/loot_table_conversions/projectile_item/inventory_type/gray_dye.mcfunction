
##gives correct item and clears loot table one

clear @s gray_dye[custom_data~{projectile_item:true}] 1
give @s gray_dye[item_model="gray_wool",consumable={consume_seconds:2147483647},custom_data={right_click:true},item_name={"text":"Squid Bomber","color":"gray","bold":true}] 1
