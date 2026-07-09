
##base sheep projectile
#sublayer between 1 and 2 for type picking
#summons with cosmetics, can always add more for fun!

execute at @s unless score @s new_projectile.is_riding matches 0 run return run function sheep_wars:projectile/summon_type/ride_fail/already_riding
execute at @s if predicate sheep_wars:player/is_sneaking run return run function sheep_wars:projectile/summon_type/ride_fail/is_sneaking

$execute at @s anchored eyes run summon minecraft:sheep ^ ^ ^ {Color:12,attributes:[{id:"scale",base:0.5},{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:gravity",base:0.02},{id:"minecraft:air_drag_modifier",base:0}],Rotation:$(Rotation),data:{"owner":$(UUID),"playerUUID":$(UUID)},OnGround:0b,DeathLootTable:"minecraft:empty",Tags:["sheep_wars.motion.linear","sheep_wars.ridable","sheep_wars.explosion.small","sheep_wars.projectile.new"]}
playsound entity.firework_rocket.launch master @a[distance=..50] ~ ~ ~ 2 1.8 1
clear @s light_blue_dye[custom_data={right_click:true}] 1

execute as @n[tag=sheep_wars.projectile.new,distance=..3] at @s run function sheep_wars:projectile/summon_sheep/layer_2 with entity @s