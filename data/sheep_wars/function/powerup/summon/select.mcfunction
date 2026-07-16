
##summons applies ticking from here

#execute store result score #powerup.type sheep_wars.background run random value 1..2
scoreboard players set #powerup.type sheep_wars.background 1

execute if score #powerup.type sheep_wars.background matches 1 run summon item_display 10000 0 10000 {item:{id:slime_block},Tags:["sheep_wars.powerup.generic","sheep_wars.powerup.new","sheep_wars.powerup.slime_shield"],interpolation_duration:40,Glowing:1b,glow_color_override:512775,transformation:{scale:[0,0,0],right_rotation:[0,0,0,1],translation:[0,0,0],left_rotation:[0,1,0,0]},Passengers:[{id:text_display,Tags:["sheep_wars.display.powerup"],billboard:"vertical",transformation:{scale:[0,0,0],right_rotation:[0,0,0,1],translation:[0,0.75,0],left_rotation:[0,0,0,1]},text:{"text":"Slime\nShield","color":"green","bold":true}}]}


execute positioned 10000 0 10000 as @e[predicate=sheep_wars:powerup/new,distance=..1] at @s run function sheep_wars:powerup/summon/score