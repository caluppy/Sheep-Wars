
##generic trigger that splits projectile into explode or effect based on entity type

execute if predicate sheep_wars:projectile/properties/do_explode run function sheep_wars:projectile/tick/trigger/explode with entity @s data
execute if predicate sheep_wars:projectile/properties/do_effect run function sheep_wars:projectile/tick/trigger/effect with entity @s data