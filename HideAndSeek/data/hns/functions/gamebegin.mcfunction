# Game Start
effect give @a[team=hiders] minecraft:invisibility 60 0 true
effect give @a[team=hiders] minecraft:resistance 60 255 true

effect give @a[team=seekers] minecraft:slowness 60 255 true
effect give @a[team=seekers] minecraft:jump_boost 60 128 true
effect give @a[team=seekers] minecraft:strength 1000000 255 true
effect give @a[team=seekers] minecraft:speed 1000000 0 true
effect give @a[team=seekers] minecraft:dolphins_grace 1000000 0 true

give @a[team=seekers] bow{display:{Name:"\"Seeker's Bow\"",Lore:["\"An ancient melee bow of unfathomable strength\""]},Enchantments:[{id:sharpness,lvl:10},{id:unbreaking,lvl:10},{id:vanishing_curse,lvl:1}]} 1

replaceitem entity @a[team=seekers] armor.head minecraft:leather_helmet{display:{Name:"\"Seeker's Cap\"",color:11546150},Enchantments:[{id:protection,lvl:5},{id:unbreaking,lvl:10},{id:binding_curse,lvl:1}]} 1
