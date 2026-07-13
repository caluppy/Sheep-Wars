
##item timer + check spawnable condition
#checks if conditional markers are spawnable
#picks random marker to spawn item
#calculates reset time based on generic modifier, base and team modifier

##scoreboard reset
scoreboard players operation #item.cooldown.final.red sheep_wars.options = #item.cooldown.base sheep_wars.options
scoreboard players operation #item.cooldown.final.red sheep_wars.options *= #10000 constants
scoreboard players operation #item.cooldown.final.red sheep_wars.options /= #spawnrate sheep_wars.options
scoreboard players operation #item.cooldown.final.red sheep_wars.options /= #cooldown.modifier.red sheep_wars.options
scoreboard players operation #item.cooldown.final.red sheep_wars.options /= #10000 constants

##if spawnable spot -> spawns item
execute as @a[predicate=sheep_wars:player/team_red] run function sheep_wars:game/tick/1s/player_items/give_items