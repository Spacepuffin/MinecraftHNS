team join seekers @a[scores={died=1}]

effect give @a[team=hiders] minecraft:saturation 1000000 10 true
effect give @a[team=seekers] minecraft:saturation 1000000 10 true
effect give @a[team=seekers] minecraft:strength 1000000 255 true
effect give @a[team=seekers] minecraft:speed 1000000 0 true
effect give @a[team=seekers] minecraft:dolphins_grace 1000000 0 true
effect give @a[scores={air=0,queue=1}] minecraft:wither 2 4 true

give @a[scores={died=1}] bow{display:{Name:"\"Seeker's Bow\"",Lore:["\"An ancient melee bow of unfathomable strength\""]},Enchantments:[{id:sharpness,lvl:10},{id:unbreaking,lvl:10},{id:vanishing_curse,lvl:1}]} 1
replaceitem entity @a[scores={died=1}] armor.head minecraft:leather_helmet{display:{Name:"\"Seeker's Cap\"",color:11546150},Enchantments:[{id:protection,lvl:5},{id:unbreaking,lvl:10},{id:binding_curse,lvl:1}]} 1

scoreboard players set @a[scores={died=1}] died 0

scoreboard players add Timer members_alive 1

scoreboard players set Hiders members_alive 0
execute as @a[team=hiders] run scoreboard players add Hiders members_alive 1

scoreboard players set Seekers members_alive 0
execute as @a[team=seekers] run scoreboard players add Seekers members_alive 1

scoreboard players set total_players count 0
execute as @a[scores={queue=1}] run scoreboard players add total_players count 1

execute if score timer members_alive >= timelimit count run function hns:endgame
execute if score Seekers members_alive = total_players count run function hns:endgame