
scoreboard players set #sheep_wars realm.loaded 0
tellraw @a[tag=realm.operator] [{"text":">","color":"green"},{"text":" Unloaded","color":"red"},{"text":" Sheepwars","color":"gold"}]

scoreboard objectives remove new_projectile.motion_success
scoreboard objectives remove new_projectile.cooldown
scoreboard objectives remove new_projectile.is_riding
scoreboard objectives remove projectile.bounce
scoreboard objectives remove sheep_wars.options
scoreboard objectives remove sort.order.kills
scoreboard objectives remove sheep_wars.display

#annoying if off for debugging cause reload would cause game to go to lobby
#scoreboard objectives remove sheep_wars.background

team remove display.players_left.blue
team remove display.players_left.red
team remove display.players_left.total
team remove display.game_time
team remove display.lobby.map
team remove display.lobby.gamemode
team remove display.lobby.spawnrate
team remove display.lobby.friendly_fire
team remove display.lobby.bounce
team remove sheep_wars.blue
team remove sheep_wars.red
team remove sheep_wars.none

bossbar remove sheep.wars.display.ready

gamerule immediate_respawn false
gamerule mob_griefing false
gamerule mob_drops true
gamerule block_drops true

datapack disable "file/sheep_wars"
