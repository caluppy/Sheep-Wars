
##ridable controlable sheep projectile
#sublayer between 1 and 2 for type picking

#check for riding first -> return + ridable fail function 

execute at @s if score @s new_projectile.is_riding matches 1 run return run function sheep_wars:projectile/summon_type/rideable_fail

$execute at @s run summon minecraft:squid ^ ^ ^1 {NoGravity:1b,Air:3600s,attributes:[{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:scale",base:2}],Rotation:$(Rotation),data:{"playerUUID":$(UUID)},OnGround:0b,DeathLootTable:"sheep_wars:entities/death_projectile/ride_carpet_squid",Tags:["sheep_wars.motion.ridable","sheep_wars.ridable","sheep_wars.type.carpet_bomb","sheep_wars.projectile.new"]}
playsound entity.firework_rocket.launch master @a[distance=..50,tag=sheep_wars_player] ~ ~ ~ 0.5 0.7
playsound minecraft:entity.sheep.hurt master @a[distance=..50,tag=sheep_wars_player] ~ ~ ~ 2 .5 1
clear @s black_dye[custom_data={right_click:true}] 1

execute as @n[tag=sheep_wars.projectile.new,distance=..3] at @s run function sheep_wars:projectile/summon_sheep/layer_2 with entity @s