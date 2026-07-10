
##generic cleanup function, triggers other functions



#kills text displays with no vehicle
execute if predicate sheep_wars:projectile/clean/display_entity run return run kill @s

#cleans motion markers for ridden sheep and text displays for effect projectiles
execute if predicate sheep_wars:projectile/clean/riding_motion_marker at @s run return run function sheep_wars:game/tick/1s/cleanup/motion_marker with entity @s data


#for low priority resets at 1 check per second
#kills projectiles out of range and checks if armor stands have lost their riding.sheep
execute if entity @a[sort=nearest,limit=1,distance=..100] run return fail
data merge entity @s {DeathLootTable:"minecraft:empty"}
kill @s
