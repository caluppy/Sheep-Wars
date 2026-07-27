

data modify entity @s data.owner set from entity @s Owner
data merge entity @s {pickup:false}
execute store result score @s player_UUID_0 store result entity @s data.playerUUID int 1 run data get entity @s Owner[0]
execute store result score @s entity_UUID_0 store result entity @s data.entityUUID int 1 run data get entity @s UUID[0]
