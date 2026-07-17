
##summon item and reset timer function
#checks if conditional markers are spawnable
#picks random marker to spawn item
#calculates reset time based on generic modifier, base and team modifier

##scoreboard reset
scoreboard players operation #item.cooldown.final.blue sheep_wars.background = #item.cooldown.base sheep_wars.background
scoreboard players operation #item.cooldown.final.blue sheep_wars.background *= #spawnrate sheep_wars.options
scoreboard players operation #item.cooldown.final.blue sheep_wars.background *= #cooldown.modifier.generic sheep_wars.background
scoreboard players operation #item.cooldown.final.blue sheep_wars.background *= #cooldown.modifier.blue sheep_wars.background

##if spawnable spot -> spawns item
execute as @a[predicate=sheep_wars:player/team_blue] run function sheep_wars:game/tick/1s/player_items/give_items