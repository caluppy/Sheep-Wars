
##effect slow + particles 10t

execute if entity @s[team=sheep_wars.blue] run effect give @a[predicate=sheep_wars:player/team_red,distance=..10] slowness 1 5 true
execute if entity @s[team=sheep_wars.red] run effect give @a[predicate=sheep_wars:player/team_blue,distance=..10] slowness 1 5 true


particle minecraft:snowflake ~ ~ ~ 2 1 2 0.01 20 normal @a[predicate=sheep_wars:player/alive,distance=..50]