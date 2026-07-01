
##base sheep projectile
#sublayer between 1 and 2 for type picking
#summons with cosmetics, can always add more for fun!

$execute at @s run summon minecraft:sheep ^ ^ ^1 {attributes:[{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:air_drag_modifier",base:0}],Rotation:$(Rotation),data:{"playerUUID":$(UUID)},OnGround:0b,DeathLootTable:"sheep_wars:entities/death_projectile/base_sheep",Tags:["sheep_wars.motion.linear","sheep_wars.explosion.base","sheep_wars.projectile.new"]}
playsound entity.firework_rocket.launch master @a[distance=..50] ~ ~ ~ 0.5 1.3
clear @s white_dye[custom_data={right_click:true}] 1

execute as @n[tag=sheep_wars.projectile.new,distance=..3] at @s run function sheep_wars:projectile/summon_sheep/layer_2 with entity @s