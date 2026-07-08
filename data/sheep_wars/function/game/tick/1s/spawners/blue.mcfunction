
##summon spawner and reset timer function
#checks if conditional markers are spawnable
#picks random marker to spawn spawner
#calculates reset time based on generic modifier, base and team modifier

##conditional marker check and used check
execute as @e[predicate=sheep_wars:game/spawner/blue] at @s run function sheep_wars:game/tick/1s/spawners/checks


##scoreboard reset
scoreboard players operation #spawner.cooldown.final.blue sheep_wars.options = #spawner.cooldown.base sheep_wars.options
scoreboard players operation #spawner.cooldown.final.blue sheep_wars.options *= #10000 constants
scoreboard players operation #spawner.cooldown.final.blue sheep_wars.options /= #cooldown.modifier.generic sheep_wars.options
scoreboard players operation #spawner.cooldown.final.blue sheep_wars.options /= #cooldown.modifier.blue sheep_wars.options
scoreboard players operation #spawner.cooldown.final.blue sheep_wars.options /= #10000 constants

##if spawnable spot -> spawns spawner
execute as @e[predicate=sheep_wars:game/spawner/blue,predicate=sheep_wars:game/spawner/used_check,sort=random,limit=1] at @s run function sheep_wars:game/tick/1s/spawners/spawn_item
