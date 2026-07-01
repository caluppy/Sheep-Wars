
#reduces score and clears other schedule if none detected

scoreboard players remove @s[predicate=sheep_wars:score/projectile_bounce/pos1] projectile.bounce 1
scoreboard players add @s[predicate=sheep_wars:score/projectile_bounce/neg1] projectile.bounce 1