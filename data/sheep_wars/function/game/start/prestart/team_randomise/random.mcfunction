##invoked if [team] ==
#random bit if 1 red if 2 blue to random player no team, if player no team invokes start function

execute store result storage sheep_wars:options_randomise team byte 1 run random value 0..1
execute if data storage sheep_wars:options_randomise {team:true} run team join sheep_wars.blue @s
execute if data storage sheep_wars:options_randomise {team:false} run team join sheep_wars.red @s

execute if entity @a[predicate=sheep_wars:player/team_none] run function sheep_wars:game/start/prestart/team_randomise/assign