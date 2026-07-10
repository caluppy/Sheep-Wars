##triggers effect

#stop motion
data merge entity @s {Motion:[0,0,0]}
tag @s remove sheep_wars.motion.linear
tag @s add sheep_wars.effect.active

#set up timer
$summon text_display ~ ~ ~ {billboard:"center",data:{playerUUID:$(playerUUID),entityUUID:$(entityUUID)},Tags:["sheep_wars.display.lifetime"]}
$ride @n[type=text_display,nbt={data:{playerUUID:$(playerUUID),entityUUID:$(entityUUID)}},distance=..1] mount @s

execute store result score @s time on passengers run scoreboard players set @s time 30
execute if predicate sheep_wars:projectile/summon_type/heal_sheep store result score @s time on passengers run scoreboard players set @s time 45

execute on passengers run data merge entity @s {text:[{"score":{name:"@s",objective:"time"},"color":"gold"},{"text":"s","color":"red"}]}

function sheep_wars:projectile/tick/trigger/effect/schedule_1t with entity @s data
