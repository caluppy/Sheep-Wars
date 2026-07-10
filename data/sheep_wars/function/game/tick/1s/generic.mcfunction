
##1s generic clock for triggering other low priority game loops

##current functions
# game timer (not yet)
#spawner timer

##cleanup
#kills cleanable entities triggers other cleaning functions if nessicary first
execute as @e[predicate=sheep_wars:do_clean] at @s run function sheep_wars:game/tick/1s/cleanup/cleanup

#resets player fall damage after riding sheep if touching ground
execute as @a[tag=sheep_wars_player] if data entity @s {OnGround:1b} run attribute @s fall_damage_multiplier base reset


##spawner timer
#executes spawn function if final timer = 0 reset happens in other function
scoreboard players remove #spawner.cooldown.final.blue sheep_wars.options 1
execute if score #spawner.cooldown.final.blue sheep_wars.options <= #0 constants run function sheep_wars:game/tick/1s/spawners/blue

scoreboard players remove #spawner.cooldown.final.red sheep_wars.options 1
execute if score #spawner.cooldown.final.red sheep_wars.options <= #0 constants run function sheep_wars:game/tick/1s/spawners/red

##player item timer
#executes spawn function if final timer = 0 reset happens in other function
scoreboard players remove #item.cooldown.final.blue sheep_wars.options 1
execute if score #item.cooldown.final.blue sheep_wars.options <= #0 constants run function sheep_wars:game/tick/1s/player_items/blue

scoreboard players remove #item.cooldown.final.red sheep_wars.options 1
execute if score #item.cooldown.final.red sheep_wars.options <= #0 constants run function sheep_wars:game/tick/1s/player_items/red
