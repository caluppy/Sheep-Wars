
##sets options for game at start of countdown, all BUT map cause needs time to clear first


##scores for each gamemode (nothing needed atm lol this is gonna suck to change)
#random = 0
#default = 1

##randomises other options
##rollranges

#map 1..1
#gamemode 1..1
#spawnrate 1..3

data merge storage sheep_wars:options_randomise {randomise:false,gamemode:false,map:false,spawnrate:false} 

execute if score #map sheep_wars.options matches 0 run data merge storage sheep_wars:options_randomise {randomise:true}
execute if score #gamemode sheep_wars.options matches 0 run data merge storage sheep_wars:options_randomise {randomise:true}
execute if score #spawnrate sheep_wars.options matches 0 run data merge storage sheep_wars:options_randomise {randomise:true}

execute if data storage sheep_wars:options_randomise {randomise:false} run return fail

tellraw @a[predicate=sheep_wars:player/alive] {"text":"Randomised Options:\n","bold":true,underlined:true}

execute if score #map sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/map
execute if score #gamemode sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/gamemode
execute if score #spawnrate sheep_wars.options matches 0 run function sheep_wars:game/options/display_selection/spawnrate

