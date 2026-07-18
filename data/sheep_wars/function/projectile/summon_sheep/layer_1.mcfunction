#summoning sequence for all sheep types here->trigger new_projectile_sheep
#use predicate/tag to check player is holding+using valid summoning item in game loop-> this function->differentiates which type should be summoned based on held item

scoreboard players set @s new_projectile.cooldown 20
#summon sequence, will probs play different sounds for different summons cause why not

#non-ridables
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye"}}] at @s run function sheep_wars:projectile/summon_type/base_sheep with entity @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] at @s run function sheep_wars:projectile/summon_type/mortar_sheep with entity @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run function sheep_wars:projectile/summon_type/air_strike with entity @s


#ridables
execute if entity @s[nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] at @s run function sheep_wars:projectile/summon_type/ride_fast_sheep with entity @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:gray_dye"}}] at @s run function sheep_wars:projectile/summon_type/ride_carpet_squid with entity @s

#effects/non-explosives
execute if entity @s[nbt={SelectedItem:{id:"minecraft:pink_dye"}}] at @s run function sheep_wars:projectile/summon_type/heal_sheep with entity @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] at @s run function sheep_wars:projectile/summon_type/slow_sheep with entity @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:black_dye"}}] at @s run function sheep_wars:projectile/summon_type/black_hole_sheep with entity @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:magenta_dye"}}] at @s run function sheep_wars:projectile/summon_type/magentalamb with entity @s
