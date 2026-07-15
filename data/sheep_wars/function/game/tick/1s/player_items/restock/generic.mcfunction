
##checks kit class -> condition restock check in specific class function

execute if predicate sheep_wars:player/kit/scout run function sheep_wars:game/tick/1s/player_items/restock/scout
execute if predicate sheep_wars:player/kit/archer run function sheep_wars:game/tick/1s/player_items/restock/archer
execute if predicate sheep_wars:player/kit/miner run function sheep_wars:game/tick/1s/player_items/restock/miner
