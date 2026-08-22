
##load function for sheep wars data pack

tellraw @a[tag=realm.operator] [{"text":"> Loaded","color":"green"},{"text":" Sheepwars","color":"gold"}]

team add sheep_wars.blue {"text":"Blue Team","color":"blue"}
team modify sheep_wars.blue color blue

team add sheep_wars.red {"text":"Red Team","color":"red"}
team modify sheep_wars.red color red

team add sheep_wars.none {"text":"No Team","color":"gray"}
team modify sheep_wars.none color gray

#applies local sheepwars player tag so effects isnt global
execute positioned 10000 -64 10000 run tag @a[distance=..500] add sheep_wars.player
team join sheep_wars.none @a[predicate=sheep_wars:player/alive,predicate=sheep_wars:player/no_team]

##projectile scores:
scoreboard objectives add new_projectile.motion_success dummy
scoreboard objectives add new_projectile.cooldown dummy
scoreboard objectives add new_projectile.is_riding dummy
scoreboard objectives add projectile.bounce dummy
scoreboard objectives add sheep_wars.options dummy
scoreboard objectives add sheep_wars.background dummy
scoreboard objectives add sort.order.kills dummy

scoreboard players set tick time 0
scoreboard players set #map sheep_wars.options 1
scoreboard players set #gamemode sheep_wars.options 1
scoreboard players set #spawnrate sheep_wars.options 2
scoreboard players set #friendly_fire sheep_wars.options 1
scoreboard players set #bounce sheep_wars.options 1
scoreboard players set @a[predicate=sheep_wars:player/alive] sheep_wars.options 0

scoreboard players set @a[predicate=sheep_wars:player/alive] new_projectile.cooldown 0
scoreboard players set @a[predicate=sheep_wars:player/alive] new_projectile.is_riding 0

execute if score #game.running sheep_wars.background matches 0 run function sheep_wars:lobby/scoreboard_display/total
