
##detects score death increasing or player on barrier block
#adjusts players left score, and if 0 runs game end
#also sets dead player to spec and clears inv

clear @s
effect clear @s
gamemode spectator @s
tag @s remove sheep_wars.player
scoreboard players set @s death 0

tp @s 10000 -20 10000
execute at @s run playsound entity.blaze.death master @s ~ ~ ~ 0.5 2
title @s actionbar {"text":"You Died","color":"red","bold":true}

execute store result score players.blue sheep_wars.background run give @a[predicate=sheep_wars:player/team_blue] air
execute store result score players.red sheep_wars.background run give @a[predicate=sheep_wars:player/team_red] air
execute store result score players.total sheep_wars.background run give @a[predicate=sheep_wars:player/alive] air
team modify display.players_left.blue suffix [{"text":" "},{"score":{name:"players.blue","objective":"sheep_wars.background"},"color":"gold"}]
team modify display.players_left.red suffix [{"text":" "},{"score":{name:"players.red","objective":"sheep_wars.background"},"color":"gold"}]
team modify display.players_left.total suffix [{"text":" Left: ","color":"white"},{"score":{name:"players.total",objective:"sheep_wars.background"},color:"gold"}]


execute if score #gamemode sheep_wars.options matches 3 run function sheep_wars:game/death/end_detect_ffa
execute unless score #gamemode sheep_wars.options matches 3 run function sheep_wars:game/death/end_detect_team