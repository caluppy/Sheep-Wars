
##other options

#spawnrate
scoreboard players set Spawns: sheep_wars.display 0
execute if score #spawnrate sheep_wars.options matches 0 run team modify display.lobby.spawnrate suffix {"text":" ???","color":"gold"}
execute if score #spawnrate sheep_wars.options matches 1 run team modify display.lobby.spawnrate suffix {"text":" Fast","color":"green"}
execute if score #spawnrate sheep_wars.options matches 2 run team modify display.lobby.spawnrate suffix {"text":" Normal","color":"green"}
execute if score #spawnrate sheep_wars.options matches 3 run team modify display.lobby.spawnrate suffix {"text":" Slow","color":"green"}

#friendly fire
scoreboard players set Kill: sheep_wars.display -1
execute if score #friendly_fire sheep_wars.options matches 0 run team modify display.lobby.friendly_fire suffix {"text":" ???","color":"gold"}
execute if score #friendly_fire sheep_wars.options matches 1 run team modify display.lobby.friendly_fire suffix {"text":" On","color":"green"}
execute if score #friendly_fire sheep_wars.options matches 2 run team modify display.lobby.friendly_fire suffix {"text":" Off","color":"red"}

scoreboard players set Bounce: sheep_wars.display -2
execute if score #bounce sheep_wars.options matches 0 run team modify display.lobby.bounce suffix {"text":" ???","color":"gold"}
execute if score #bounce sheep_wars.options matches 1 run team modify display.lobby.bounce suffix {"text":" Off","color":"red"}
execute if score #bounce sheep_wars.options matches 2 run team modify display.lobby.bounce suffix {"text":" Low","color":"yellow"}
execute if score #bounce sheep_wars.options matches 3 run team modify display.lobby.bounce suffix {"text":" High","color":"green"}
