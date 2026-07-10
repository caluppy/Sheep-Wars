
##effect heal + particles 10t

execute if entity @s[team=sheep_wars.blue] run effect give @a[tag=sheep_wars_player,team=sheep_wars.blue,distance=..10] regeneration 1 2 true
execute if entity @s[team=sheep_wars.red] run effect give @a[tag=sheep_wars_player,team=sheep_wars.red,distance=..10] regeneration 1 2 true


particle heart ~ ~2 ~ 2 1 2 0 20 normal @a[tag=sheep_wars_player]