
scoreboard players remove #cooldown.modifier.red time 5
execute if score #cooldown.modifier.red time > #0 constants run return fail

scoreboard players set #cooldown.modifier.red sheep_wars.background 2
tellraw @a[predicate=sheep_wars:player/team_red] [{"text":" - ","color":"red"},{"text":"Double Spawnrate","color":"dark_green"}]
execute as @a[predicate=sheep_wars:player/team_red] at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 0.5 2
