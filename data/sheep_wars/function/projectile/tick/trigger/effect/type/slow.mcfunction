
##effect slow + particles 10t

execute if entity @s[team=sheep_wars.blue] run effect give @a[tag=sheep_wars_player,team=sheep_wars.red,distance=..10] slowness 1 5 true
execute if entity @s[team=sheep_wars.red] run effect give @a[tag=sheep_wars_player,team=sheep_wars.blue,distance=..10] slowness 1 5 true


particle minecraft:snowflake ~ ~ ~ 2 1 2 0.01 20 normal @a[tag=sheep_wars_player]