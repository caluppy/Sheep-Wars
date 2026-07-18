
##effect heal + particles 10t

execute if predicate sheep_wars:projectile/properties/team_red run effect give @a[predicate=sheep_wars:player/team_blue,distance=..10] regeneration 1 2 true
execute if predicate sheep_wars:projectile/properties/team_red run effect give @a[predicate=sheep_wars:player/team_red,distance=..10] regeneration 1 2 true

scoreboard players set @s count 0

particle heart ~ ~2 ~ 2 1 2 0 20 normal @a[predicate=sheep_wars:player/alive,distance=..50]