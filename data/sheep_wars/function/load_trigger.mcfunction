
##load function for sheep wars data pack

##reloads realm base load function to make sure all players getting telemetry (may need to apply extra tag for lag prevention in future



#applies local sheepwars player tag so effects isnt global
execute positioned 10000 -64 10000 run tag @a[distance=..1000] add sheep_wars_player

#objective adding and resetting key scores for debugging
scoreboard objectives add new_projectile.motion_success dummy
scoreboard objectives add new_projectile.cooldown dummy
scoreboard objectives add new_projectile.is_riding dummy
scoreboard objectives add projectile.bounce dummy
scoreboard objectives add time dummy
scoreboard players set tick time 0

scoreboard players set @a[tag=sheep_wars_player] new_projectile.cooldown 0
scoreboard players set @a[tag=sheep_wars_player] new_projectile.is_riding 0

#triggers cleanup slowloop
function sheep_wars:cleanup/cleanup


