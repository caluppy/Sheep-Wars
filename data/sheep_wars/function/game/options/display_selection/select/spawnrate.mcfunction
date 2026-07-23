
execute if score #spawnrate sheep_wars.options matches 1 run tellraw @a[predicate=sheep_wars:player/alive] [{"text":" - ","color":"gray"},{"text":"Spawnrate: ","color":"dark_gray"},{"text":"Fast","color":"green"}]
execute if score #spawnrate sheep_wars.options matches 2 run tellraw @a[predicate=sheep_wars:player/alive] [{"text":" - ","color":"gray"},{"text":"Spawnrate: ","color":"dark_gray"},{"text":"Normal","color":"yellow"}]
execute if score #spawnrate sheep_wars.options matches 3 run tellraw @a[predicate=sheep_wars:player/alive] [{"text":" - ","color":"gray"},{"text":"Spawnrate: ","color":"dark_gray"},{"text":"Slow","color":"gold"}]
