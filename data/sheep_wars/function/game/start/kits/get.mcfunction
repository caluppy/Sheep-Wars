
##matches kit to score

execute if score @s sheep_wars.options matches 0 run tag @s add sheep_wars.player.random.kit
execute if score @s sheep_wars.options matches 0 store result score @s sheep_wars.options run random value 1..3

execute if score @s sheep_wars.options matches 1 run function sheep_wars:game/start/kits/knight
execute if score @s sheep_wars.options matches 2 run function sheep_wars:game/start/kits/lumberjack
execute if score @s sheep_wars.options matches 3 run function sheep_wars:game/start/kits/scout

execute if predicate sheep_wars:player/do_randomise_kit run function sheep_wars:game/start/kits/get_display