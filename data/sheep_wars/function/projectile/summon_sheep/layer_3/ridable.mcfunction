
#initial handling of ridable mobs before ticking
#applies player and entity UUID[0] to scoreboards for unique tagging by player and entity for armor stand recognition

##see line 17 can apply UUIDs directly to data then remove lines 21 and 22, just need 24

$scoreboard players set @s player_UUID_0 $(playerUUID)
$scoreboard players set @s entity_UUID_0 $(entityUUID)

#mounts player and sets fall damage to 0, reset when touch ground by cleanup function
$execute if entity @s[tag=sheep_wars.projectile.new] run ride @p[distance=..5,scores={player_UUID_0=$(playerUUID)},limit=1] mount @s
execute on passengers run attribute @s fall_damage_multiplier base set 0

#summons armor stand with inherited player UUID custom name for temp tagging to add scoreboards and UUIDs to data for armor stand
#is okay cause no two playerUUID armor stands should be able to exist currently, may need more robust temp tagging in future
#can probs att player and entity UUID into data during summon command, just havent done yet for some reason
$execute at @s positioned ^ ^ ^1 on passengers rotated as @s run summon marker ~ ~ ~ {data:{"playerUUID":$(playerUUID),"entityUUID":$(entityUUID)},CustomName:"$(playerUUID)",Tags:["sheep_wars.riding.motion_marker"]}

#stores UUIDs in score
$execute as @n[predicate=sheep_wars:riding_motion_marker,name=$(playerUUID)] run scoreboard players set @s player_UUID_0 $(playerUUID)
$execute as @n[predicate=sheep_wars:riding_motion_marker,name=$(playerUUID)] run scoreboard players set @s entity_UUID_0 $(entityUUID)

tag @s remove sheep_wars.projectile.new