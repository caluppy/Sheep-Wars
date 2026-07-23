
 $summon tnt ~ ~ ~ {owner:$(owner),Motion:[0,1,0],explosion_power:3f,fuse:50s,CustomName:{"text":"The Magentalamb","color":"light_purple"},CustomNameVisible:false}

scoreboard players operation @n[type=tnt,distance=0] player_UUID_0 = @s player_UUID_0

execute store result entity @n[type=tnt,distance=0] Motion[0] double 0.001 run random value -300..300
execute store result entity @n[type=tnt,distance=0] Motion[2] double 0.001 run random value -300..300

execute if predicate sheep_wars:projectile/properties/team_blue run team join sheep_wars.blue @n[type=tnt,distance=0]
execute if predicate sheep_wars:projectile/properties/team_red run team join sheep_wars.red @n[type=tnt,distance=0]



 scoreboard players set @s count 0