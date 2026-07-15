
execute store result score @s count run clear @s wind_charge 0
execute if score @s count < #3 constants at @s run give @s wind_charge