
##effect heal + particles 10t

execute if entity @s[team=sheep_wars.blue] run effect give @a[predicate=sheep_wars:player/team_blue,distance=..10] regeneration 1 2 true
execute if entity @s[team=sheep_wars.red] run effect give @a[predicate=sheep_wars:player/team_red,distance=..10] regeneration 1 2 true


particle heart ~ ~2 ~ 2 1 2 0 20 normal @a[predicate=sheep_wars:player/alive,distance=..50]