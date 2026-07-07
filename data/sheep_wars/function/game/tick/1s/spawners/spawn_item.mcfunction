
##spawn item function, unsure how to randomly summon the item just yet, should just require a scoreboard
#will just spawn base sheep for now, need weighting system and such
#actually can use loot table will implement after random position selection working

playsound minecraft:block.decorated_pot.insert master @a[tag=sheep_wars_player] ~ ~ ~ 0.5 0.7 0.1
particle end_rod ~ ~.1 ~ 0 0.5 0 0.01 30 normal

loot spawn ~ ~ ~ loot sheep_wars:entities/spawners/generic

tag @s add sheep_wars.spawner.used