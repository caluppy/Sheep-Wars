
##invoked when attempt to summon ridable when sneaking
#cosmetic

tellraw @s {"text":"Cannot summon while sneaking","color":"red"}
playsound block.anvil.land master @s ~ ~ ~ 0.5 1

scoreboard players set @s new_projectile.cooldown 5