
scoreboard players set seconds time 0

execute if score #cooldown.modifier.blue time > #0 constants run function sheep_wars:game/tick/5s/powerup/spawnrate/blue
execute if score #cooldown.modifier.red time > #0 constants run function sheep_wars:game/tick/5s/powerup/spawnrate/red
