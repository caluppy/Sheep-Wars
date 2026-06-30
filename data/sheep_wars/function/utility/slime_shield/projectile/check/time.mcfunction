
execute if entity @s[scores={time=..0}] on passengers run kill @s
execute if entity @s[scores={time=..0}] run return run kill @s

scoreboard players remove @s time 1

execute on passengers if entity @s[type=text_display] run execute store result score @s time on vehicle run scoreboard players get @s time
execute on passengers if entity @s[type=text_display] run data merge entity @s {text:[{"score":{name:"@s",objective:"time"},"color":"gold"},{"text":"s","color":"red"}]}