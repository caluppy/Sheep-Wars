
#checks if sheep with same player owner exists, if not runs kill and resets riding status of player

$execute if score @s entity_UUID_0 = @e[tag=sheep_wars.motion.ridable,scores={player_UUID_0=$(playerUUID)},limit=1] entity_UUID_0 run return fail
kill @s
$scoreboard players set @p[scores={player_UUID_0=$(playerUUID)}] new_projectile.is_riding 0