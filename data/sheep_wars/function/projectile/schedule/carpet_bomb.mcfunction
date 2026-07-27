
$execute if score #gamemode sheep_wars.options matches 2 run summon tnt ~ ~ ~ {owner:$(owner),explosion_power:6f,fuse:100s,CustomName:{"text":"Carpet Bomb","color":"gray"},CustomNameVisible:false}
$execute unless score #gamemode sheep_wars.options matches 2 run summon tnt ~ ~ ~ {owner:$(owner),explosion_power:4f,fuse:100s,CustomName:{"text":"Carpet Bomb","color":"gray"},CustomNameVisible:false}


scoreboard players operation @n[type=tnt,distance=0] player_UUID_0 = @s player_UUID_0

playsound entity.tnt.primed master @a[distance=..50,predicate=sheep_wars:player/alive] ~ ~ ~ 0.7 1 0.1



scoreboard players set @s new_projectile.cooldown 0