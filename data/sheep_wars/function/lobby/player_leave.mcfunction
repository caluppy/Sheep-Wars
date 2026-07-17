
tag @s remove sheep_wars.player
team leave @s
bossbar set sheep.wars.display.ready players @a[predicate=sheep_wars:player/alive]

execute positioned 10000 0 10000 unless entity @a[predicate=sheep_wars:player/alive,distance=..500] run datapack disable "file/sheep_wars"


summon text_display ~ ~ ~ {billboard:"center"}