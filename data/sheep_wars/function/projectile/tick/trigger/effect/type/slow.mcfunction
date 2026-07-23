
##effect slow + particles 10t

execute if predicate sheep_wars:projectile/properties/team_blue run effect give @a[predicate=sheep_wars:player/team_red,distance=..10] slowness 1 4 true
execute if predicate sheep_wars:projectile/properties/team_red run effect give @a[predicate=sheep_wars:player/team_blue,distance=..10] slowness 1 4 true
$execute if predicate sheep_wars:projectile/properties/team_none as @a[predicate=sheep_wars:player/alive,distance=..10] unless score @s player_UUID_0 matches $(playerUUID) run effect give @s slowness 1 4 true


scoreboard players set @s count 0

particle minecraft:snowflake ~ ~ ~ 2 1 2 0.01 20 normal @a[predicate=sheep_wars:player/alive,distance=..50]