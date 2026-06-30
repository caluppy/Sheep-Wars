
##summons slime shield

scoreboard players set @s new_projectile.cooldown 20

$execute anchored eyes run summon interaction ^ ^ ^4 {Rotation:$(Rotation),data:{"playerUUID":$(UUID)},"Passengers":[{id:"text_display",billboard:"vertical",text:[{"text":"100","color":"gold"},{"text":"s","color":"red"}],transformation:{scale:[1f,1f,1f],translation:[0f,2.5f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}},{id:"block_display",Glowing:0b,Rotation:$(Rotation),block_state:{Name:"slime_block"},"transformation":{scale:[5f,4f,1f],translation:[-2.5f,-2f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}],Tags:["sheep_wars.utility.new","sheep_wars.slime_shield"]}
playsound block.slime_block.break master @a[distance=..50] ~ ~ ~ 1 0.8 0.5
clear @s slime_ball[custom_data={right_click:true}] 1

execute as @n[tag=sheep_wars.utility.new,distance=..5] at @s run function sheep_wars:utility/layer_2 with entity @s

#currently functional
#- handles all sheep projectiles and ridables
#- working summon item
#- set up layer structure for further utilities

#Issues:
#- currently one way
#- no way of moving or removing
#- no lifespan

#Having issues with predicates, should be working but just aren't, particularly with inverse conditions. please look into it