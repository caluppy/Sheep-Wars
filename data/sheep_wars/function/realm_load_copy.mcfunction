scoreboard objectives add right.click dummy

#position tracking scoreboards
scoreboard objectives add player.yaw dummy
scoreboard objectives add player.pitch dummy
scoreboard objectives add position.x dummy
scoreboard objectives add position.y dummy
scoreboard objectives add position.z dummy
scoreboard objectives add previous.position.x dummy
scoreboard objectives add previous.position.y dummy
scoreboard objectives add previous.position.z dummy
scoreboard objectives add velocity.x dummy
scoreboard objectives add velocity.y dummy
scoreboard objectives add velocity.z dummy

#math scoreboards for constants 
scoreboard objectives add constants dummy
scoreboard players set #20 constants 20
scoreboard players set #10000 constants 10000

#player UUID scoreboards for summoning player specific entities
scoreboard objectives add player_UUID_0 dummy
scoreboard objectives add entity_UUID_0 dummy
execute as @a store result score @s player_UUID_0 run data get entity @s UUID[0]