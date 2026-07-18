
##1s generic clock for triggering other low priority game loops

scoreboard players set tick time 0
scoreboard players add seconds time 1
execute if score seconds time matches 5 run function sheep_wars:game/tick/5s/generic

##cleanup
#kills cleanable entities triggers other cleaning functions if nessicary first
execute as @e[predicate=sheep_wars:do_clean] at @s run function sheep_wars:game/tick/1s/cleanup/cleanup

#resets player fall damage after riding sheep if touching ground
execute as @a[predicate=sheep_wars:player/alive] if data entity @s {OnGround:true} run attribute @s fall_damage_multiplier base reset


#gametime
scoreboard players add game.time sheep_wars.background 1
execute if score game.time sheep_wars.background matches 60 run scoreboard players add game.time.minutes sheep_wars.background 1
execute if score game.time sheep_wars.background matches 60 run scoreboard players set game.time sheep_wars.background 0

execute if score game.time sheep_wars.background < #10 constants run team modify display.game_time suffix [{"text":" "},{"score":{name:"game.time.minutes","objective":"sheep_wars.background"},"color":"gold"},{"text":":","color":"yellow"},{"text":"0","color":"gold"},{"score":{name:"game.time","objective":"sheep_wars.background"},"color":"gold"}]
execute if score game.time sheep_wars.background >= #10 constants run team modify display.game_time suffix [{"text":" "},{"score":{name:"game.time.minutes","objective":"sheep_wars.background"},"color":"gold"},{"text":":","color":"yellow"},{"score":{name:"game.time","objective":"sheep_wars.background"},"color":"gold"}]

##spawner timer
#executes spawn function if final timer = 0 reset happens in other function
scoreboard players remove #spawner.cooldown.final.blue sheep_wars.background 1
execute if score #spawner.cooldown.final.blue sheep_wars.background <= #0 constants run function sheep_wars:game/tick/1s/spawners/blue

scoreboard players remove #spawner.cooldown.final.red sheep_wars.background 1
execute if score #spawner.cooldown.final.red sheep_wars.background <= #0 constants run function sheep_wars:game/tick/1s/spawners/red

##player item timer
#executes spawn function if final timer = 0 reset happens in other function
scoreboard players remove #item.cooldown.final.blue sheep_wars.background 1
execute if score #item.cooldown.final.blue sheep_wars.background <= #0 constants run function sheep_wars:game/tick/1s/player_items/blue

scoreboard players remove #item.cooldown.final.red sheep_wars.background 1
execute if score #item.cooldown.final.red sheep_wars.background <= #0 constants run function sheep_wars:game/tick/1s/player_items/red

##powerups
scoreboard players remove #powerup.cooldown.final sheep_wars.background 1
execute if score #powerup.cooldown.final sheep_wars.background <= #0 constants run function sheep_wars:powerup/summon/select
