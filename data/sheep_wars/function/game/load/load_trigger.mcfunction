
##load function for sheep wars data pack

##reloads realm base load function to make sure all players getting telemetry (may need to apply extra tag for lag prevention in future



#applies local sheepwars player tag so effects isnt global
execute positioned 10000 -64 10000 run tag @a[distance=..1000] add sheep_wars_player

##objective adding and resetting key scores

#will only run tick command if this is 1 so tick can be turned off and on
scoreboard players set #game.running sheep_wars.options 0


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
scoreboard players set #map sheep_wars.options 1
scoreboard objectives add time dummy
scoreboard objectives add count dummy
scoreboard objectives add food food
scoreboard objectives add health health
scoreboard players set tick time 0
scoreboard objectives add death deathCount

##sheep_wars.display is the sidebar display for game loop
#displays players left per team and timer
scoreboard objectives remove sheep_wars.display
scoreboard objectives add sheep_wars.display dummy {"text":"Sheep Wars","color":"gold","bold":true}
scoreboard objectives add sheep_wars.background dummy

#functional teams, uses suffix to display scores ingame
team add display.players_left.blue
team modify display.players_left.blue color blue
team modify display.players_left.blue prefix {"text":" - ","color":"gray"}
team add display.players_left.red
team modify display.players_left.red color red
team modify display.players_left.red prefix {"text":" - ","color":"gray"}
team add display.game_time
team modify display.game_time color green
team modify display.game_time prefix [{"text":" - ","color":"gray"},{"text":"Game ","color":"green"}]

team join display.players_left.blue Blue
team join display.players_left.red Red
team join display.game_time Time:

#cosmetic team colors
team add display.color.white
team modify display.color.white color white
team modify display.color.white suffix {"text":" Left:","color":"white"}
team join display.color.white Players

scoreboard players set #cooldown.modifier.generic sheep_wars.options 1

scoreboard players set #0 constants 0
scoreboard players set #57 constants 57
scoreboard players set #3 constants 3


scoreboard players set @a[tag=sheep_wars_player] new_projectile.cooldown 0
scoreboard players set @a[tag=sheep_wars_player] new_projectile.is_riding 0

team add sheep_wars.blue {"text":"Blue Team","color":"blue"}
team add sheep_wars.red {"text":"Red Team","color":"red"}




