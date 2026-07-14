
##detects change in timestamp from self

#working out which armor stand itself is
execute if predicate sheep_wars:lobby/interaction/team_red on attacker at @s run function sheep_wars:lobby/modifiers/team/leave_red
execute if predicate sheep_wars:lobby/interaction/team_blue on attacker at @s run function sheep_wars:lobby/modifiers/team/leave_blue
execute if predicate sheep_wars:lobby/interaction/map on attacker at @s run function sheep_wars:lobby/modifiers/map/remove
execute if predicate sheep_wars:lobby/interaction/gamemode on attacker at @s run function sheep_wars:lobby/modifiers/gamemode/remove
execute if predicate sheep_wars:lobby/interaction/spawnrate on attacker at @s run function sheep_wars:lobby/modifiers/options/spawnrate/remove
execute if predicate sheep_wars:lobby/interaction/start on attacker at @s run function sheep_wars:lobby/modifiers/ready/false
execute if predicate sheep_wars:lobby/interaction/kit on attacker at @s run function sheep_wars:lobby/modifiers/kit/info

#cleared change in timestamp for next tick
data merge entity @s {attack:{timestamp:0}}
