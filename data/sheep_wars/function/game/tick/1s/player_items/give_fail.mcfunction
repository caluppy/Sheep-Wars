
##conditional check generic: invoked by both teams
#give when holding =>16 projectiles

tellraw @s {"text":"Too many projectiles!","color":"red"}
playsound entity.item.pickup master @s ~ ~ ~ 0.5 0