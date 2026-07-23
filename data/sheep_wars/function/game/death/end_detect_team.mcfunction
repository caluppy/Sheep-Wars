
##trigger game end, probs need different functions for each winning team maybe?
execute if score players.total sheep_wars.background matches 0 run return run schedule function sheep_wars:game/end/win_tie 1t replace
execute if score players.blue sheep_wars.background matches 0 run schedule function sheep_wars:game/end/win_red 1t replace
execute if score players.red sheep_wars.background matches 0 run schedule function sheep_wars:game/end/win_blue 1t replace
