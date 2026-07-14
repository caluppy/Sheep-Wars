
execute store result bossbar sheep.wars.display.ready max store result score players.total sheep_wars.background run give @a[predicate=sheep_wars:player/alive] air
execute store result bossbar sheep.wars.display.ready value store result score players.ready sheep_wars.background run give @a[predicate=sheep_wars:player/lobby_ready] air

execute if score players.total sheep_wars.background = players.ready sheep_wars.background run function sheep_wars:game/start/prestart/initial