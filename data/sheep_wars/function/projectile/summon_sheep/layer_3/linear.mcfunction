
##triggered after sheep type summmoned, sets player owner and calculates player facing velocity for motion tick function

#copying player UUID for ownership tracking and entity uniqueness before teleporting to add direction
#execute store result score @s player_UUID_0 run data get entity @s data.playerUUID
$scoreboard players set @s player_UUID_0 $(playerUUID)
$scoreboard players set @s entity_UUID_0 $(entityUUID)

$execute if entity @a[predicate=sheep_wars:player/team_blue,scores={player_UUID_0=$(playerUUID)},limit=1] run team join sheep_wars.blue @s
$execute if entity @a[predicate=sheep_wars:player/team_red,scores={player_UUID_0=$(playerUUID)},limit=1] run team join sheep_wars.red @s
$execute if entity @a[predicate=sheep_wars:player/team_none,scores={player_UUID_0=$(playerUUID)},limit=1] run team join sheep_wars.none @s


#sets position -> deltaposition=velocity/tick
execute store result score @s previous.position.x run data get entity @s Pos[0] 1000
execute store result score @s previous.position.y run data get entity @s Pos[1] 1000
execute store result score @s previous.position.z run data get entity @s Pos[2] 1000

tp @s ^ ^ ^1

#final pos
execute store result score @s position.x run data get entity @s Pos[0] 1000
execute store result score @s position.y run data get entity @s Pos[1] 1000
execute store result score @s position.z run data get entity @s Pos[2] 1000

#store subtraction as vel  
execute store result score @s velocity.x run scoreboard players operation @s position.x -= @s previous.position.x
execute store result score @s velocity.y run scoreboard players operation @s position.y -= @s previous.position.y
execute store success score @s new_projectile.motion_success store result score @s velocity.z run scoreboard players operation @s position.z -= @s previous.position.z

#score for sucess and ready for ticking
tag @s remove sheep_wars.projectile.new
