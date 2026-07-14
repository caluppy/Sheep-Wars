
##invoked if atleast 1 player with no team
#if [teams] equal -> random function
# if 1>2 -> 2 @r no team
# if 1<2 -> 1 @r no team
#if still player no team runs again

execute as @a[predicate=sheep_wars:player/no_team] unless predicate sheep_wars:player/do_randomise_team run tag @s add sheep_wars.player.random.team

execute if score players.blue sheep_wars.background = players.red sheep_wars.background as @r[predicate=sheep_wars:player/no_team,limit=1] run return run function sheep_wars:game/start/prestart/team_randomise/random

execute if score players.blue sheep_wars.background > players.red sheep_wars.background as @r[predicate=sheep_wars:player/no_team,limit=1] run team join sheep_wars.red @s
execute if score players.blue sheep_wars.background < players.red sheep_wars.background as @r[predicate=sheep_wars:player/no_team,limit=1] run team join sheep_wars.blue @s

execute if entity @a[predicate=sheep_wars:player/no_team] run function sheep_wars:game/start/prestart/team_randomise/assign