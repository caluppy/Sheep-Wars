
##scheduled drop tnt every 3 seconds
#triggered once then schedules itself, returns if fail entity check

execute unless entity @s run return fail
summon tnt ^ ^ ^ {explosion_power:1f,fuse:100s,CustomName:{"text":"Carpet Bomb","color":"gray"},CustomNameVisible:false}
playsound entity.tnt.primed master @a[distance=..25,tag=sheep_wars_player] ~ ~ ~ 0.7 1 0.1

scoreboard players set @s new_projectile.cooldown 0