
##kit select

scoreboard players add @s sheep_wars.options 1
execute if score @s sheep_wars.options matches 4 run scoreboard players set @s sheep_wars.options 0

playsound item.armor.equip_chain master @s ~ ~ ~ 0.3 1

execute if score @s sheep_wars.options matches 0 run title @s actionbar [{"text":"Kit Selected:","color":"gold","underlined":true},{"text":" Random","underlined":false,"color":"red"}]
execute if score @s sheep_wars.options matches 1 run title @s actionbar [{"text":"Kit Selected:","color":"gold","underlined":true},{"text":" Knight","underlined":false,"color":"yellow"}]
execute if score @s sheep_wars.options matches 2 run title @s actionbar [{"text":"Kit Selected:","color":"gold","underlined":true},{"text":" Lumberjack","underlined":false,"color":"dark_green"}]
execute if score @s sheep_wars.options matches 3 run title @s actionbar [{"text":"Kit Selected:","color":"gold","underlined":true},{"text":" Scout","underlined":false,"color":"aqua"}]