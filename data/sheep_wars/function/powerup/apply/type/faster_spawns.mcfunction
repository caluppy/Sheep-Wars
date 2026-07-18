
#blue team
execute if predicate sheep_wars:player/team_blue run scoreboard players set #cooldown.modifier.blue sheep_wars.background 1
execute if predicate sheep_wars:player/team_blue run tellraw @a[predicate=sheep_wars:player/team_blue] [{"text":" + ","color":"green"},{"text":"Double Spawnrate","color":"dark_green"},{"text":" for 60 seconds.","color":"green"}]
execute if predicate sheep_wars:player/team_blue run scoreboard players set #cooldown.modifier.blue time 60

#red team
execute if predicate sheep_wars:player/team_red run scoreboard players set #cooldown.modifier.red sheep_wars.background 1
execute if predicate sheep_wars:player/team_red run tellraw @a[predicate=sheep_wars:player/team_red] [{"text":" + ","color":"green"},{"text":"Double Spawnrate","color":"dark_green"},{"text":" for 60 seconds.","color":"green"}]
execute if predicate sheep_wars:player/team_red run scoreboard players set #cooldown.modifier.red time 60
