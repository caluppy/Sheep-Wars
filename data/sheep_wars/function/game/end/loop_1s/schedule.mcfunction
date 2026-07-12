
##schedule function

#essentially pauses game time
scoreboard players remove game.time sheep_wars.background 1
scoreboard players remove #map time 1

execute if score #map time matches 0 run return run execute as @a[predicate=sheep_wars:player/on_team] run function sheep_wars:game/end/loop_1s/end

execute if score #map time > #3 constants as @a[predicate=sheep_wars:player/alive] at @s run summon firework_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:firework_rocket,components:{fireworks:{flight_duration:50,explosions:[{shape:large_ball,has_twinkle:1b,has_trail:1b,colors:[I;16701501,8439583],fade_colors:[I;11546150]},{shape:star,has_twinkle:1b,colors:[I;16383998],fade_colors:[I;15961002]}]}}}}

execute if score #map time <= #3 constants as @a[predicate=sheep_wars:player/on_team] run title @s actionbar [{"text":"Game ends in: ","color":"gold"},{"score":{name:"#map",objective:"time"},"color":"red","bold":true}]
execute if score #map time <= #3 constants as @a[predicate=sheep_wars:player/on_team] at @s run playsound ui.button.click master @s ~ ~ ~ 0.5 2

execute if score #map time matches 2 run function sheep_wars:structure/map/place/lobby_temp

execute if score #map time > #0 constants run schedule function sheep_wars:game/end/loop_1s/schedule 1s