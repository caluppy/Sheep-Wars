
##spawn item function, unsure how to randomly summon the item just yet, should just require a scoreboard
#will just spawn base sheep for now, need weighting system and such
#actually can use loot table will implement after random position selection working

##food and effect handling
execute if predicate sheep_wars:player/do_regen run effect give @s minecraft:saturation 6 0 true


##generic items w/ max count dependancies
execute store result score @s count run clear @s #terracotta 0
execute unless score @s[team=sheep_wars.blue] count >= #57 constants run give @s light_blue_terracotta 8
execute unless score @s[team=sheep_wars.red] count >= #57 constants run give @s red_terracotta 8

execute store result score @s count run clear @s #dyes[custom_data~{right_click:true}] 0
execute if score @s count >= #20 constants at @s run return run function sheep_wars:game/tick/1s/player_items/give_fail

playsound entity.item.pickup master @s ~ ~ ~ 0.5 0.7

loot give @s loot sheep_wars:entities/spawners/generic
function sheep_wars:game/tick/loot_table_conversions/projectile_item/inventory