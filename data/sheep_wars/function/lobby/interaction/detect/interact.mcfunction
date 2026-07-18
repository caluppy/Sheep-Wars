
##detects change in timestamp from self

#working out which armor stand itself is
execute if predicate sheep_wars:lobby/interaction/start on target at @s run function sheep_wars:lobby/modifiers/ready/true
execute if predicate sheep_wars:lobby/interaction/kit on target at @s run function sheep_wars:lobby/modifiers/kit/select

execute if predicate sheep_wars:lobby/interaction/team_red on target at @s run function sheep_wars:lobby/modifiers/team/join_red
execute if predicate sheep_wars:lobby/interaction/team_blue on target at @s run function sheep_wars:lobby/modifiers/team/join_blue

execute if predicate sheep_wars:lobby/interaction/map on target at @s run function sheep_wars:lobby/modifiers/map/add
execute if predicate sheep_wars:lobby/interaction/gamemode on target at @s run function sheep_wars:lobby/modifiers/gamemode/add

execute if predicate sheep_wars:lobby/interaction/spawnrate on target at @s run function sheep_wars:lobby/modifiers/options/spawnrate/add
execute if predicate sheep_wars:lobby/interaction/friendly_fire on target at @s run function sheep_wars:lobby/modifiers/options/friendly_fire/add
execute if predicate sheep_wars:lobby/interaction/bounce on target at @s run function sheep_wars:lobby/modifiers/options/bounce/add


#cleared change in timestamp for next tick
data merge entity @s {interaction:{timestamp:0}}
