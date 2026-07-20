
scoreboard players set #step sort.order.kills 1
execute store result score #total sort.count if entity @e[type=armor_stand]
scoreboard players reset #total.previous

execute as @e[type=armor_stand] at @s run function sheep_wars:game/end/leaderboard/kills_test/player/setup
