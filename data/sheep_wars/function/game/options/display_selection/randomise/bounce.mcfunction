
execute store result score #bounce sheep_wars.options run random value 1..3

execute if score #bounce sheep_wars.options matches 1 run tellraw @a[predicate=sheep_wars:player/alive] [{"text":" - ","color":"gray"},{"text":"Bounce: ","color":"dark_gray"},{"text":"Off","color":"gold"}]
execute if score #bounce sheep_wars.options matches 2 run tellraw @a[predicate=sheep_wars:player/alive] [{"text":" - ","color":"gray"},{"text":"Bounce: ","color":"dark_gray"},{"text":"Low","color":"yellow"}]
execute if score #bounce sheep_wars.options matches 3 run tellraw @a[predicate=sheep_wars:player/alive] [{"text":" - ","color":"gray"},{"text":"Bounce: ","color":"dark_gray"},{"text":"High","color":"green"}]

data merge storage sheep_wars:options_randomise {bounce:true}
