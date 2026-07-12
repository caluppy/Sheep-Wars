
##returns riding score to 0 after 5 ticks
#dings when able to ride again

scoreboard players add @a[predicate=sheep_wars:player/alive,scores={new_projectile.is_riding=..-1}] new_projectile.is_riding 1
execute as @a[predicate=sheep_wars:player/alive] if score @s new_projectile.is_riding matches 0 at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 2 0.5

execute if entity @a[predicate=sheep_wars:player/alive,scores={new_projectile.is_riding=..-1},limit=1] run schedule function sheep_wars:projectile/schedule/dismount_cooldown 1t
