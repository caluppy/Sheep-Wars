
#for low priority resets at 1 check per second
#kills projectiles out of range and checks if armor stands have lost their riding.sheep

execute if entity @a[sort=nearest,limit=1,distance=..50] run return fail
data merge entity @s {DeathLootTable:"minecraft:empty"}
kill @s
