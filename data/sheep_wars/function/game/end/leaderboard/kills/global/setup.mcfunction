
scoreboard players set #step sort.order.kills 1
execute store result score #total sort.count if entity @a[predicate=sheep_wars:player/on_team]
scoreboard players reset #total.previous

execute as @a[predicate=sheep_wars:player/on_team] at @s run function sheep_wars:game/end/leaderboard/kills/player/setup