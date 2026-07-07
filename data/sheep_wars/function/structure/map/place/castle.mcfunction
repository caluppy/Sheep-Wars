
##places base map for castle surrounding 10000 0 10000
#file structure for adding more maps easily

##blocks
#blue base
place template sheep_wars:maps/castle/blue_pos_x 10000 -40 10016
place template sheep_wars:maps/castle/blue_neg_x 9969 -40 10016

#red base
place template sheep_wars:maps/castle/red_pos_x 10000 -40 9961
place template sheep_wars:maps/castle/red_neg_x 9969 -40 9961

##spawners

##blue base

##permanents
#front row
summon marker 10022 -37 10019 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.permanent"]}
summon marker 10009 -37 10019 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.permanent"]}
summon marker 10005 -37 10019 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.permanent"]}
summon marker 9995 -37 10019 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.permanent"]}
summon marker 9991 -37 10019 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.permanent"]}
summon marker 997 -37 10019 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.permanent"]}

#inside
summon marker 10015 -35 10033 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.permanent"]}
summon marker 9985 -35 10033 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.permanent"]}
summon marker 10007 -35 10031 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.permanent"]}
summon marker 9993 -35 10031 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.permanent"]}

##conditionals
#only will spawn if blocks underneath them, all on upper floor

#front 3
summon marker 10008 -28 10028 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.conditional"]}
summon marker 9992 -28 10028 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.conditional"]}
summon marker 10000 -27.5 10018 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.conditional"]}

#back row
summon marker 10024 -26 10034 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.conditional"]}
summon marker 10015 -26 10034 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.conditional"]}
summon marker 10000 -28 10036 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.conditional"]}
summon marker 9985 -26 10034 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.conditional"]}
summon marker 9976 -26 10034 {Tags:["sheep_wars.spawner.blue","sheep_wars.spawner.conditional"]}

##red base

##permanents
#front row
summon marker 10022 -37 9981 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.permanent"]}
summon marker 10009 -37 9981 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.permanent"]}
summon marker 10005 -37 9981 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.permanent"]}
summon marker 9995 -37 9981 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.permanent"]}
summon marker 9991 -37 9981 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.permanent"]}
summon marker 997 -37 9981 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.permanent"]}

#inside
summon marker 10015 -35 9967 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.permanent"]}
summon marker 9985 -35 9967 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.permanent"]}
summon marker 10007 -35 9969 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.permanent"]}
summon marker 9993 -35 9969 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.permanent"]}

##conditionals
#only will spawn if blocks underneath them, all on upper floor

#front 3
summon marker 10008 -28 9972 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.conditional"]}
summon marker 9992 -28 9972 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.conditional"]}
summon marker 10000 -27.5 9982 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.conditional"]}

#back row
summon marker 10024 -26 9966 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.conditional"]}
summon marker 10015 -26 9966 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.conditional"]}
summon marker 10000 -28 9964 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.conditional"]}
summon marker 9985 -26 9966 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.conditional"]}
summon marker 9976 -26 9966 {Tags:["sheep_wars.spawner.red","sheep_wars.spawner.conditional"]}
