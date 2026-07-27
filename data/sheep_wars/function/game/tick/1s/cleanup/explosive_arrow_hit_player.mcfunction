
execute if score #gamemode sheep_wars.options matches 2 run summon tnt ~ ~0 ~ {explosion_power:6f,fuse:0s,CustomName:{"text":"Exploding Arrow","color":"gold"},CustomNameVisible:false}
execute unless score #gamemode sheep_wars.options matches 2 run summon tnt ~ ~0 ~ {explosion_power:4f,fuse:0s,CustomName:{"text":"Exploding Arrow","color":"gold"},CustomNameVisible:false}


effect clear @s
advancement revoke @s only sheep_wars:explode_arrow_hit