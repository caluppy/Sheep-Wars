
#blue team
execute if predicate sheep_wars:player/team_blue run effect give @a[predicate=sheep_wars:player/team_blue] regeneration 30 1
execute if predicate sheep_wars:player/team_blue run tellraw @a[predicate=sheep_wars:player/team_blue] [{"text":" + ","color":"green"},{"text":"Regeneration II","color":"light_purple"},{"text":" for 30 seconds.","color":"green"}]

#red team
execute if predicate sheep_wars:player/team_red run effect give @a[predicate=sheep_wars:player/team_red] regeneration 30 1
execute if predicate sheep_wars:player/team_red run tellraw @a[predicate=sheep_wars:player/team_red] [{"text":" + ","color":"green"},{"text":"Regeneration II","color":"light_purple"},{"text":" for 30 seconds.","color":"green"}]
