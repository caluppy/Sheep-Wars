
scoreboard players remove #cooldown.modifier.blue time 5
execute if score #cooldown.modifier.blue time > #0 constants run return fail

scoreboard players set #cooldown.modifier.blue sheep_wars.background 2
tellraw @a[predicate=sheep_wars:player/team_blue] [{"text":" - ","color":"red"},{"text":"Double Spawnrate","color":"dark_green"}]
execute as @a[predicate=sheep_wars:player/team_blue] at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 0.5 2
