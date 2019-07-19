# Gamerules:
gamerule doEntityDrops false
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule keepInventory true

# Player Settings:
gamemode adventure @a[scores={queue=1}]
clear @a[scores={queue=1}]
effect clear @a[scores={queue=1}]

# Scoreboard:
scoreboard objectives add count dummy
execute as @a[scores={queue=1}] run scoreboard players add total_players count 1
scoreboard players set timelimit count 12000

scoreboard objectives add air air

scoreboard objectives add members_alive dummy "Members Alive"
scoreboard objectives setdisplay sidebar members_alive

scoreboard objectives add kills totalKillCount "Kills"
scoreboard objectives setdisplay belowName kills

scoreboard objectives add died deathCount
scoreboard players set @a[scores={queue=1}] died 0 

scoreboard players set Timer members_alive 0

# Teams
team add hiders "Hiders"
team modify hiders color white
team modify hiders friendlyFire false
team modify hiders nametagVisibility hideForOtherTeams
team join hiders @a[scores={queue=1}]

team add seekers "Seekers"
team modify seekers color red
team modify seekers friendlyFire false
team modify seekers nametagVisibility hideForOtherTeams
team modify seekers collisionRule pushOtherTeams
team join seekers @r[scores={queue=1}]


#Initial Team count
team join hiders Hiders
scoreboard players set Hiders members_alive 1
execute as @a[team=hiders] run scoreboard players add Hiders members_alive 1
execute run scoreboard players remove Hiders members_alive 1

team join seekers Seekers
scoreboard players set Seekers members_alive 0
execute as @a[team=seekers] run scoreboard players add Seekers members_alive 1

# UI stuff:
title @a title "Hide and Seek"
title @a[team=hiders] subtitle "You are a hider."
title @a[team=seekers] subtitle "You are a seeker."

# Game Start
tp @a[scores={queue=1}] @s
function hns:gamebegin