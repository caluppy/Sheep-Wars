
#using give air instead of team list because team list includes nonplayer entities on team

execute store result score players.blue sheep_wars.background run give @a[predicate=sheep_wars:player/team_blue] air
execute store result score players.red sheep_wars.background run give @a[predicate=sheep_wars:player/team_red] air
execute store result score players.total sheep_wars.background run give @a[predicate=sheep_wars:player/alive] air

team modify display.players_left.total suffix [{"text":" "},{"score":{name:"players.total","objective":"sheep_wars.background"},"color":"gold"}]
team modify display.players_left.blue suffix [{"text":" "},{"score":{name:"players.blue","objective":"sheep_wars.background"},"color":"gold"}]
team modify display.players_left.red suffix [{"text":" "},{"score":{name:"players.red","objective":"sheep_wars.background"},"color":"gold"}]
scoreboard players set Blue sheep_wars.display 3
scoreboard players set Red sheep_wars.display 3
