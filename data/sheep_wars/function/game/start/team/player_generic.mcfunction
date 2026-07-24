
##prepares player executables

#clears key.player.dat
gamemode survival @s
effect clear @s
clear @s
tag @s add sheep_wars.player
spawnpoint @s 10000 0 10000

tag @s remove sheep_wars.player.ready

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
execute if entity @s[predicate=sheep_wars:player/team_blue] run function sheep_wars:game/start/team/blue
execute if entity @s[predicate=sheep_wars:player/team_red] run function sheep_wars:game/start/team/red
execute if entity @s[predicate=sheep_wars:player/team_none] run function sheep_wars:game/start/team/none

#options
execute if score #gamemode sheep_wars.options matches 2 run effect give @s resistance infinite 4 true
execute if score #gamemode sheep_wars.options matches 2 run attribute @s attack_knockback base set 0.6
execute if score #gamemode sheep_wars.options matches 2 run attribute @s safe_fall_distance base set 100

execute if score #bounce sheep_wars.options matches 2 run attribute @s bounciness base set 0.6
execute if score #bounce sheep_wars.options matches 2 run attribute @s air_drag_modifier base set 0.9
execute if score #bounce sheep_wars.options matches 2 run attribute @s safe_fall_distance base set 100

execute if score #bounce sheep_wars.options matches 3 run attribute @s bounciness base set 1
execute if score #bounce sheep_wars.options matches 3 run attribute @s air_drag_modifier base set 0.8
execute if score #bounce sheep_wars.options matches 3 run attribute @s safe_fall_distance base set 100
