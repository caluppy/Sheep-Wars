
title @s actionbar [{"text":"Teleporting to lobby","color":"red"}]
clear @s
effect clear @s
gamemode adventure @s
xp set @s 0 levels
xp set @s 0 points

spawnpoint @s 0 -2 0 90 -35
tag @s remove sheep_wars.player.win

effect give @s instant_health infinite 10 true
effect give @s saturation infinite 255 true
effect give @s resistance infinite 255 true

attribute @s attack_knockback base reset
attribute @s bounciness base reset
attribute @s air_drag_modifier base reset

execute if predicate sheep_wars:player/do_randomise_team run team join sheep_wars.none
execute if predicate sheep_wars:player/do_randomise_team run tag @s remove sheep_wars.player.random.team
execute if predicate sheep_wars:player/do_randomise_kit run scoreboard players set @s sheep_wars.options 0
execute if predicate sheep_wars:player/do_randomise_kit run tag @s remove sheep_wars.player.random.kit

tp @s 10000 41 10000 0 0