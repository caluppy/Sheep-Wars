
##base load command for realm, will have dependants

#click event scoreboards
scoreboard objectives add right.click dummy
scoreboard objectives add consume dummy

##check loaded
scoreboard objectives add realm.loaded dummy

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

#useful scores for all games:
scoreboard objectives add time dummy
scoreboard objectives add count dummy
scoreboard objectives add food food
scoreboard objectives add health health
scoreboard objectives add death deathCount
scoreboard objectives add kills playerKillCount
scoreboard objectives add sort.count dummy
scoreboard objectives add attempt.consume dummy


#math scoreboards for constants 
scoreboard objectives add constants dummy
scoreboard players set #0 constants 0
scoreboard players set #2 constants 2
scoreboard players set #3 constants 3
scoreboard players set #8 constants 8
scoreboard players set #10 constants 10
scoreboard players set #20 constants 20
scoreboard players set #50 constants 50
scoreboard players set #57 constants 57
scoreboard players set #100 constants 100
scoreboard players set #10000 constants 10000

#player UUID scoreboards for summoning player specific entities
scoreboard objectives add player_UUID_0 dummy
scoreboard objectives add entity_UUID_0 dummy
execute as @a store result score @s player_UUID_0 run data get entity @s UUID[0]

#for interactions:
scoreboard objectives add interaction.attack.time dummy
scoreboard objectives add interaction.interact.time dummy
scoreboard objectives add animate dummy
