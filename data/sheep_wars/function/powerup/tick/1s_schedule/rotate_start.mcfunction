
data merge entity @s {transformation:{scale:[1,1,1],right_rotation:[0,0,0,1],translation:[0,0,0],left_rotation:[0,0.707,0,0.707]}}
execute on passengers run data merge entity @s {interpolation_duration:40,transformation:{scale:[2.5,2.5,2.5],right_rotation:[0,0,0,1],translation:[0,0.75,0],left_rotation:[0,0,0,1]}}

tag @s remove sheep_wars.powerup.new