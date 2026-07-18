
##mortar sheep projectile
#sublayer between 1 and 2 for type picking
#has gravity applies big motion once

$execute at @s anchored eyes run summon minecraft:sheep ^ ^ ^ {Color:13,attributes:[{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:air_drag_modifier",base:0}],Rotation:$(Rotation),data:{"owner":$(UUID),"playerUUID":$(UUID)},OnGround:0b,DeathLootTable:"sheep_wars:entities/death_projectile/mortar_sheep",Tags:["sheep_wars.type.mortar","sheep_wars.motion.linear","sheep_wars.projectile.new"]}
playsound minecraft:entity.shulker.shoot master @a[distance=..100] ~ ~ ~ 1.3 0.7 0.5
clear @s green_dye[custom_data={right_click:true}] 1

execute as @n[tag=sheep_wars.projectile.new,distance=..3] at @s run function sheep_wars:projectile/summon_sheep/layer_2 with entity @s