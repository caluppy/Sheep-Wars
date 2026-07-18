
scoreboard players set #sheep_wars realm.loaded 0
tellraw @a[tag=realm.operator] [{"text":">","color":"green"},{"text":" Unloaded","color":"red"},{"text":" Sheepwars","color":"gold"}]

datapack disable "file/sheep_wars"
