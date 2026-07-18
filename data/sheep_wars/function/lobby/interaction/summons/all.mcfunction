
##list of summons for all map changing options in sheep_wars. Change position when needed

execute positioned 10000 41 10000 run kill @e[type=!player,distance=..12]

#startgame
summon minecraft:interaction 10000 41 10007 {width:1,height:3,response:true,Tags:["sheep_wars.lobby","sheep_wars.click.start"],attack:{timestamp:0},interaction:{timestamp:0},Passengers:[{id:"text_display",text:[{"text":"Start Game\n","color":"gold","bold":true},{"text":"(ready up)","color":"red","bold":false}],billboard:"vertical",transformation:{"left_rotation":[0,0,0,1],"right_rotation":[0,0,0,1],scale:[1.5,1.5,1.5],translation:[0,-1.5,0]}}]}

##team handling
#blue team
summon minecraft:interaction 10002 41 10006 {width:1,height:3,response:true,Tags:["sheep_wars.lobby","sheep_wars.click.join.blue"],attack:{timestamp:0},interaction:{timestamp:0},Passengers:[{id:"text_display",text:[{"text":"Join:\n","color":"green"},{"text":"Blue Team","color":"blue","bold":true}],billboard:"vertical",transformation:{"left_rotation":[0,0,0,1],"right_rotation":[0,0,0,1],scale:[1,1,1],translation:[0,-1.5,0]}}]}
#red team
summon minecraft:interaction 9998 41 10006 {width:1,height:3,response:true,Tags:["sheep_wars.lobby","sheep_wars.click.join.red"],attack:{timestamp:0},interaction:{timestamp:0},Passengers:[{id:"text_display",text:[{"text":"Join:\n","color":"green"},{"text":"Red Team","color":"red","bold":true}],billboard:"vertical",transformation:{"left_rotation":[0,0,0,1],"right_rotation":[0,0,0,1],scale:[1,1,1],translation:[0,-1.5,0]}}]}

##maps
summon minecraft:interaction 10006 41 9999 {width:1,height:3,response:true,Tags:["sheep_wars.lobby","sheep_wars.click.map"],attack:{timestamp:0},interaction:{timestamp:0},Passengers:[{id:"text_display",text:[{"text":"Map:\n","color":"green","bold":true},{"text":"(Change)","color":"red","bold":false}],billboard:"vertical",transformation:{"left_rotation":[0,0,0,1],"right_rotation":[0,0,0,1],scale:[1,1,1],translation:[0,-1.5,0]}}]}
##gamemode
summon minecraft:interaction 10006 41 10001 {width:1,height:3,response:true,Tags:["sheep_wars.lobby","sheep_wars.click.gamemode"],attack:{timestamp:0},interaction:{timestamp:0},Passengers:[{id:"text_display",text:[{"text":"Gamemode:\n","color":"green","bold":true},{"text":"(Change)","color":"red","bold":false}],billboard:"vertical",transformation:{"left_rotation":[0,0,0,1],"right_rotation":[0,0,0,1],scale:[1,1,1],translation:[0,-1.5,0]}}]}
##options
summon minecraft:interaction 9994 41 10000 {width:1,height:3,response:true,Tags:["sheep_wars.lobby","sheep_wars.click.spawnrate"],attack:{timestamp:0},interaction:{timestamp:0},Passengers:[{id:"text_display",text:[{"text":"Item\nSpawnrate:\n","color":"green","bold":true},{"text":"(Change)","color":"red","bold":false}],billboard:"vertical",transformation:{"left_rotation":[0,0,0,1],"right_rotation":[0,0,0,1],scale:[1,1,1],translation:[0,-1.5,0]}}]}
summon minecraft:interaction 9994 41 10002 {width:1,height:3,response:true,Tags:["sheep_wars.lobby","sheep_wars.click.friendly_fire"],attack:{timestamp:0},interaction:{timestamp:0},Passengers:[{id:"text_display",text:[{"text":"Friendly\nFire:\n","color":"green","bold":true},{"text":"(Change)","color":"red","bold":false}],billboard:"vertical",transformation:{"left_rotation":[0,0,0,1],"right_rotation":[0,0,0,1],scale:[1,1,1],translation:[0,-1.5,0]}}]}
summon minecraft:interaction 9994 41 9998 {width:1,height:3,response:true,Tags:["sheep_wars.lobby","sheep_wars.click.bounce"],attack:{timestamp:0},interaction:{timestamp:0},Passengers:[{id:"text_display",text:[{"text":"Bounce:\n","color":"green","bold":true},{"text":"(Change)","color":"red","bold":false}],billboard:"vertical",transformation:{"left_rotation":[0,0,0,1],"right_rotation":[0,0,0,1],scale:[1,1,1],translation:[0,-1.5,0]}}]}


#kits
summon minecraft:interaction 10000 41 9994 {width:1,height:3,response:true,Tags:["sheep_wars.lobby","sheep_wars.click.kit"],attack:{timestamp:0},interaction:{timestamp:0},Passengers:[{id:"text_display",text:[{"text":"Pick Kit:\n","color":"gold","bold":true},{"text":"(Change)","color":"red","bold":false}],billboard:"vertical",transformation:{"left_rotation":[0,0,0,1],"right_rotation":[0,0,0,1],scale:[1.5,1.5,1.5],translation:[0,-1.5,0]}}]}
