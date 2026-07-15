
##load function for sheep wars data pack

##reloads realm base load function to make sure all players getting telemetry (may need to apply extra tag for lag prevention in future



#applies local sheepwars player tag so effects isnt global
execute positioned 10000 -64 10000 run tag @a[distance=..1000] add sheep_wars_player

##objective adding and resetting key scores


##projectile scores:
#motion success for applying linear ticking
#cooldown for player cooldown inbetween projectile uses also for utilities
#is riding for projectile and player to know if entity riding or not -> applies riding tick and doesent allow other riding projectile summons
#bounce is for when entity currently bouncing, -ve in -ve direction to slime shield rotation +ve is in same direction - also acts as cooldown for reapplying linear motion
#options for game options
scoreboard objectives add new_projectile.motion_success dummy
scoreboard objectives add new_projectile.cooldown dummy
scoreboard objectives add new_projectile.is_riding dummy
scoreboard objectives add projectile.bounce dummy
scoreboard objectives add sheep_wars.options dummy
scoreboard objectives add time dummy
scoreboard objectives add count dummy
scoreboard objectives add food food
scoreboard objectives add health health
scoreboard objectives add death deathCount

scoreboard objectives add interaction.attack.time dummy
scoreboard objectives add interaction.interact.time dummy

scoreboard players set tick time 0
scoreboard players set #map sheep_wars.options 1
scoreboard players set #gamemode sheep_wars.options 1
scoreboard players set #spawnrate sheep_wars.options 2
scoreboard players set #cooldown.modifier.generic sheep_wars.options 2
scoreboard players set @a[predicate=sheep_wars:player/alive] sheep_wars.options 0

scoreboard players set @a[predicate=sheep_wars:player/alive] new_projectile.cooldown 0
scoreboard players set @a[predicate=sheep_wars:player/alive] new_projectile.is_riding 0

scoreboard players set #0 constants 0
scoreboard players set #3 constants 3
scoreboard players set #8 constants 8
scoreboard players set #57 constants 57


team add sheep_wars.blue {"text":"Blue Team","color":"blue"}
team modify sheep_wars.blue color blue

team add sheep_wars.red {"text":"Red Team","color":"red"}
team modify sheep_wars.red color red
