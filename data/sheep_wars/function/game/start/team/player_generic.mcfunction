
##prepares player executables

#clears key.player.dat
gamemode survival @s
clear @s
tag @s add sheep_wars_player
xp set @s 0 points
xp set @s 0 levels

effect give @s saturation 1 100 true
effect give @s instant_health 1 100 true

#key scoreboards
scoreboard players set @s new_projectile.cooldown 0
scoreboard players set @s new_projectile.is_riding 0

#cosmetics
title @s actionbar {"text":"GO","color":"green","bold":true}


#assign team function teams must be assigned before this called
#check if player on any team -> if not call random assign based on which team has less players
execute if entity @s[team=sheep_wars.blue] run function sheep_wars:game/start/team/blue
execute if entity @s[team=sheep_wars.red] run function sheep_wars:game/start/team/red