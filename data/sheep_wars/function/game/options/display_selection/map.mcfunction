
##map (hashed command to be added once other maps added)
#execute store result score #map sheep_wars.options run random value 1..2
scoreboard players set #map sheep_wars.options 1

execute if score #map sheep_wars.options matches 1 run tellraw @a[predicate=sheep_wars:player/alive] [{"text":" - ","color":"gray"},{"text":"Map: ","color":"dark_gray"},{"text":"Castle","color":"green"}]

data merge storage sheep_wars:options_randomise {map:true}
