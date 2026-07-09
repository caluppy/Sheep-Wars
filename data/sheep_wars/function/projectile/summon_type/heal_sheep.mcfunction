
##healing sheep
#sublayer between 1 and 2 for type picking
#summons with cosmetics, can always add more for fun!

$execute at @s anchored eyes run summon minecraft:sheep ^ ^ ^ {Color:6,attributes:[{id:"scale",base:2},{id:"knockback_resistance",base:0.8},{id:"movement_speed",base:0},{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:air_drag_modifier",base:0}],Rotation:$(Rotation),data:{"owner":$(UUID),"playerUUID":$(UUID)},OnGround:0b,DeathLootTable:"minecraft:empty",Tags:["sheep_wars.motion.linear","sheep_wars.type.heal","sheep_wars.projectile.new"]}
playsound minecraft:entity.villager.celebrate master @a[distance=..50] ~ ~ ~ 0.5 0
clear @s pink_dye[custom_data={right_click:true}] 1

execute as @n[tag=sheep_wars.projectile.new,distance=..3] at @s run function sheep_wars:projectile/summon_sheep/layer_2 with entity @s
