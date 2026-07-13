

##gamemode (hashed command to be added once other gamemodes added)
#execute store result score #gamemode sheep_wars.options run random value 1..2
scoreboard players set #gamemode sheep_wars.options 1

execute if score #gamemode sheep_wars.options matches 1 run tellraw @a[predicate=sheep_wars:player/alive] [{"text":" - ","color":"gray"},{"text":"Gamemode: ","color":"dark_gray"},{"text":"Default","color":"green"}]

data merge storage sheep_wars:options_randomise {gamemode:true}
