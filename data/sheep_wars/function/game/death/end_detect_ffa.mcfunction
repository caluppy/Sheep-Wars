
execute if score players.total sheep_wars.background matches 0 run return run schedule function sheep_wars:game/end/win_tie 1t replace
execute if score players.total sheep_wars.background matches 1 run schedule function sheep_wars:game/end/win_player 1t replace
