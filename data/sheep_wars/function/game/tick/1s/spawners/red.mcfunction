
##spawner timer + check spawnable condition
#checks if conditional markers are spawnable
#picks random marker to spawn item
#calculates reset time based on generic modifier, base and team modifier

##conditional marker check and used check
execute as @e[predicate=sheep_wars:game/spawner/red] at @s run function sheep_wars:game/tick/1s/spawners/checks

##scoreboard reset
scoreboard players operation #spawner.cooldown.final.red sheep_wars.background = #spawner.cooldown.base sheep_wars.background
scoreboard players operation #spawner.cooldown.final.red sheep_wars.background *= #spawnrate sheep_wars.options
scoreboard players operation #spawner.cooldown.final.red sheep_wars.background *= #cooldown.modifier.generic sheep_wars.background
scoreboard players operation #spawner.cooldown.final.red sheep_wars.background *= #cooldown.modifier.red sheep_wars.background

##if spawnable spot -> spawns spawner
execute as @e[predicate=sheep_wars:game/spawner/red,predicate=sheep_wars:game/spawner/used_check,sort=random,limit=1] at @s run function sheep_wars:game/tick/1s/spawners/spawn_item
