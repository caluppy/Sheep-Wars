
$summon tnt ^ ^ ^ {owner:$(owner),explosion_power:3f,fuse:100s,CustomName:{"text":"Carpet Bomb","color":"gray"},CustomNameVisible:false}
playsound entity.tnt.primed master @a[distance=..50,predicate=sheep_wars:player/alive] ~ ~ ~ 0.7 1 0.1

scoreboard players set @s new_projectile.cooldown 0