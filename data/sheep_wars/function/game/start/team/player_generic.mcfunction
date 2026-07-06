
##prepares player executables

gamemode survival @s
clear @s
tag @s add sheep_wars_player
xp set @s 0 points
xp set @s 0 levels

effect give @s saturation 1 100 true
effect give @s instant_health 1 100 true



#assign team function teams must be assigned before this called
#check if player on any team -> if not call random assign based on which team has less players
execute if entity @s[team=sheep_wars.blue] run function sheep_wars:game/start/team/blue
execute if entity @s[team=sheep_wars.red] run function sheep_wars:game/start/team/red