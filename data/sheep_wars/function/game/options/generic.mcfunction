
#returns selected options for all selected scores

tellraw @a[predicate=sheep_wars:player/alive] {"text":"Selected Options:\n","bold":true,underlined:true}

execute unless score #map sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/select/map
execute unless score #gamemode sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/select/gamemode
execute unless score #spawnrate sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/select/spawnrate
execute unless score #friendly_fire sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/select/friendly_fire
execute unless score #bounce sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/select/bounce

##sets options for game at start of countdown, all BUT map cause needs time to clear first
execute if score #friendly_fire sheep_wars.options matches 1 run team modify sheep_wars.blue friendlyFire true
execute if score #friendly_fire sheep_wars.options matches 1 run team modify sheep_wars.red friendlyFire true

execute if score #friendly_fire sheep_wars.options matches 2 run team modify sheep_wars.blue friendlyFire false
execute if score #friendly_fire sheep_wars.options matches 2 run team modify sheep_wars.red friendlyFire false

data merge storage sheep_wars:options_randomise {randomise:false,gamemode:false,map:false,spawnrate:false,friendly_fire:false,bounce:false} 

execute if score #map sheep_wars.options matches 0 run data merge storage sheep_wars:options_randomise {randomise:true}
execute if score #gamemode sheep_wars.options matches 0 run data merge storage sheep_wars:options_randomise {randomise:true}
execute if score #spawnrate sheep_wars.options matches 0 run data merge storage sheep_wars:options_randomise {randomise:true}
execute if score #friendly_fire sheep_wars.options matches 0 run data merge storage sheep_wars:options_randomise {randomise:true}
execute if score #bounce sheep_wars.options matches 0 run data merge storage sheep_wars:options_randomise {randomise:true}

execute if data storage sheep_wars:options_randomise {randomise:false} run return fail

tellraw @a[predicate=sheep_wars:player/alive] {"text":"Randomised Options:\n","bold":true,underlined:true}

execute if score #map sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/randomise/map
execute if score #gamemode sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/randomise/gamemode
execute if score #spawnrate sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/randomise/spawnrate
execute if score #friendly_fire sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/randomise/friendly_fire
execute if score #bounce sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/randomise/bounce

