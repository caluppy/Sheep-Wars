#summoning sequence for all sheep types here->trigger new_projectile_sheep
#use predicate/tag to check player is holding+using valid summoning item in game loop-> this function->differentiates which type should be summoned based on held item

scoreboard players set @s new_projectile.cooldown 20
#summon sequence, will probs play different sounds for different summons cause why not

execute if entity @s[nbt={SelectedItem:{id:"minecraft:slime_ball"}}] at @s run function sheep_wars:utility/slime_shield/summon with entity @s