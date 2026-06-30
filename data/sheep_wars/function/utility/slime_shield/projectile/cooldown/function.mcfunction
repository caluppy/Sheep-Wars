
#reduces score and clears other schedule if none detected

scoreboard players remove @s[scores={projectile.bounce=1..}] projectile.bounce 1
scoreboard players add @s[scores={projectile.bounce=..-1}] projectile.bounce 1