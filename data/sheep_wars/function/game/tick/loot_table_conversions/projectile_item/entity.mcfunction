
##called following tick trigger for customdata item_projectile passes
#unable to use predicate to recognise Item.components.custom_data.projectile_item:true for some reason, unsure why
#when find out will switch to predicate as less computationally heavy

#checks for each projectile based on item id, loot table will differ for each type

execute if predicate sheep_wars:projectile/item/white_dye run summon item ~ ~0.210 ~ {CustomNameVisible:1b,CustomName:{"text":"Sheep Launcher","color":"green","bold":true},Tags:["sheep_wars.summon_item.generic"],NoGravity:1b,Item:{id:"white_dye",components:{"item_name":{"text":"Sheep Launcher","color":"green","bold":true},"item_model":"white_wool","consumable":{consume_seconds:2147483647},"custom_data":{"right_click":true}}},Motion:[0,0.02,0],Health:10}
execute if predicate sheep_wars:projectile/item/green_dye run summon item ~ ~0.210 ~ {CustomNameVisible:1b,CustomName:{"text":"Sheep Mortar","color":"dark_green","bold":true},Tags:["sheep_wars.summon_item.generic"],NoGravity:1b,Item:{id:"green_dye",components:{"item_name":{"text":"Sheep Mortar","color":"dark_green","bold":true},"item_model":"green_wool","consumable":{consume_seconds:2147483647},"custom_data":{"right_click":true}}},Motion:[0,0.02,0],Health:10}

execute if predicate sheep_wars:projectile/item/light_blue_dye run summon item ~ ~0.210 ~ {CustomNameVisible:1b,CustomName:{"text":"Sheep Hang Glider","color":"blue","bold":true},Tags:["sheep_wars.summon_item.generic"],NoGravity:1b,Item:{id:"light_blue_dye",components:{"item_name":{"text":"Sheep Hang Glider","color":"blue","bold":true},"item_model":"light_blue_wool","consumable":{consume_seconds:2147483647},"custom_data":{"right_click":true}}},Motion:[0,0.02,0],Health:10}
execute if predicate sheep_wars:projectile/item/black_dye run summon item ~ ~0.210 ~ {CustomNameVisible:1b,CustomName:{"text":"Squid Bomber","color":"gray","bold":true},Tags:["sheep_wars.summon_item.generic"],NoGravity:1b,Item:{id:"black_dye",components:{"item_name":{"text":"Squid Bomber","color":"gray","bold":true},"item_model":"black_wool","consumable":{consume_seconds:2147483647},"custom_data":{"right_click":true}}},Motion:[0,0.02,0],Health:10}

kill @s
