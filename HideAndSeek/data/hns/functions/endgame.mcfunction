gamerule doEntityDrops true
gamerule doMobSpawning true
gamerule mobGriefing true
gamerule keepInventory false

execute if score timer members_alive >= timelimit count run title @a[scores={queue=1}] title "Hiders Win!"
execute if score Seekers members_alive = total_players count run title @a[scores={queue=1}] title "Seekers Win!"

effect clear @a[scores={queue=1}]
clear @a[scores={queue=1}]
gamemode survival @a[scores={queue=1}]

scoreboard players set @a queue 0

scoreboard objectives remove count
scoreboard objectives remove members_alive
scoreboard objectives remove died
scoreboard objectives remove timer
scoreboard objectives remove kills

team remove hiders
team remove seekers



scoreboard players enable @a queue