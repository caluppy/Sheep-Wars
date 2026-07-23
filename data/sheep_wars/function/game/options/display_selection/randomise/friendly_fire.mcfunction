
execute store result score #friendly_fire sheep_wars.options run random value 1..2

execute if score #friendly_fire sheep_wars.options matches 1 run tellraw @a[predicate=sheep_wars:player/alive] [{"text":" - ","color":"gray"},{"text":"Team Kill: ","color":"dark_gray"},{"text":"On","color":"green"}]
execute if score #friendly_fire sheep_wars.options matches 2 run tellraw @a[predicate=sheep_wars:player/alive] [{"text":" - ","color":"gray"},{"text":"Team Kill: ","color":"dark_gray"},{"text":"Off","color":"gold"}]

execute if score #friendly_fire sheep_wars.options matches 1 run team modify sheep_wars.blue friendlyFire true
execute if score #friendly_fire sheep_wars.options matches 1 run team modify sheep_wars.red friendlyFire true

execute if score #friendly_fire sheep_wars.options matches 2 run team modify sheep_wars.blue friendlyFire false
execute if score #friendly_fire sheep_wars.options matches 2 run team modify sheep_wars.red friendlyFire false

data merge storage sheep_wars:options_randomise {friendly_fire:true}
