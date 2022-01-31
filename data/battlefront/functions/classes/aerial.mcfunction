execute if entity @s[scores={defeated=2}] run clear @s

#first order jet trooper
execute if entity @s[scores={defeated=2},team=FO] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"First Order Jet Trooper Helmet","italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;336125291,658262222,-1090249647,-2073266283],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2Y4MDc0OGQ4OGEzZDA1YTc2NGFjNmM0MmNjMTQyNDdlYTM3MTBkZmIyZTdkZGNiYWM3ODE1ZmNkYzIyMTExYSJ9fX0="}]}},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=FO] run item replace entity @s armor.chest with minecraft:iron_chestplate{display:{Name:'{"text":"NJP-900 Integrated Jetpack","color":"yellow","italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=FO] run give @s minecraft:crossbow{display:{Name:'{"text":"G125 Projectile Launcher","color":"red","italic":false}',Lore:['{"text":"Shoots explosive projectiles","italic":false}','{"text":"\\"None defies the First Order!\\""}']},Unbreakable:1} 1
execute if entity @s[scores={defeated=2},team=FO] run give @s minecraft:carrot_on_a_stick{custom_model_data:1,display:{Name:'{"text":"Toggle Hover","color":"gray","italic":false}'},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=FO] run give @s minecraft:tipped_arrow{Potion:"minecraft:water",CustomPotionColor:12397074,display:{Name:'{"text":"G125 Projectile Bolt","italic":false}'},HideFlags:32} 64

#resistance jump trooper
execute if entity @s[scores={defeated=2},team=RES] run give @s minecraft:crossbow{display:{Name:'{"text":"EL-16HFE blaster","italic":false}'},Enchantments:[{id:"quick_charge",lvl:2}],Unbreakable:1} 1
execute if entity @s[scores={defeated=2},team=RES] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Resistance Jump-Pack","color":"yellow","italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1,HideFlags:1,Tags:["actualjumppack"]} 1
execute if entity @s[scores={defeated=2},team=RES] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Boots","color":"yellow","italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:feather_falling",lvl:32767}],Unbreakable:1,HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=RES] run give @s minecraft:carrot_on_a_stick{custom_model_data:6,display:{Name:'{"text":"Jetpack Boost","color":"gray","italic":false}'},HideFlags:1,Unbreakable:1,Tags:["jumppack"]} 1
execute if entity @s[scores={defeated=2},team=RES] run give @s minecraft:arrow{display:{Name:'{"text":"Blaster Bolt","italic":false}'}} 64

#imperial jump trooper
execute if entity @s[scores={defeated=2},team=EMP] run give @s minecraft:crossbow{display:{Name:'{"text":"E-11 blaster","italic":false}'},Enchantments:[{id:"quick_charge",lvl:2}],Unbreakable:1} 1
execute if entity @s[scores={defeated=2},team=EMP] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Imperial Jump-Pack","color":"yellow","italic":false}',color:16383998},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1,HideFlags:1,Tags:["actualjumppack"]} 1
execute if entity @s[scores={defeated=2},team=EMP] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Boots","color":"yellow","italic":false}',color:16383998},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:feather_falling",lvl:32767}],Unbreakable:1,HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=EMP] run give @s minecraft:carrot_on_a_stick{custom_model_data:6,display:{Name:'{"text":"Jetpack Boost","color":"gray","italic":false}'},HideFlags:1,Unbreakable:1,Tags:["jumppack"]} 1
execute if entity @s[scores={defeated=2},team=EMP] run give @s minecraft:arrow{display:{Name:'{"text":"Blaster Bolt","italic":false}'}} 64

#rebellion jump trooper
execute if entity @s[scores={defeated=2},team=REB] run give @s minecraft:crossbow{display:{Name:'{"text":"A280C blaster","italic":false}'},Enchantments:[{id:"quick_charge",lvl:2}],Unbreakable:1} 1
execute if entity @s[scores={defeated=2},team=REB] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Rebellion Jump-Pack","color":"yellow","italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1,HideFlags:1,Tags:["actualjumppack"]} 1
execute if entity @s[scores={defeated=2},team=REB] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Boots","color":"yellow","italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:feather_falling",lvl:32767}],Unbreakable:1,HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REB] run give @s minecraft:carrot_on_a_stick{custom_model_data:6,display:{Name:'{"text":"Jetpack Boost","color":"gray","italic":false}'},HideFlags:1,Unbreakable:1,Tags:["jumppack"]} 1
execute if entity @s[scores={defeated=2},team=REB] run give @s minecraft:arrow{display:{Name:'{"text":"Blaster Bolt","italic":false}'}} 64

#clone jump trooper
execute if entity @s[scores={defeated=2},team=REP] run give @s minecraft:crossbow{display:{Name:'{"text":"DC-17","italic":false}'},Enchantments:[{id:"quick_charge",lvl:2}],Unbreakable:1} 1
execute if entity @s[scores={defeated=2},team=REP] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Jet Trooper Helmet"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;1542657991,-1299887119,-1361409750,-392448798],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODliNDg5NDI4ZmNlN2RmMjQxZWE1OTk4ZGQxMGRmMzU0MTMwNGNlYzI5NmZiMzNkZWVkNzU3OTg0YTM2MTI4OCJ9fX0="}]}},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REP] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Republic Jump-Pack","color":"yellow","italic":false}',color:16383998},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1,HideFlags:1,Tags:["actualjumppack"]} 1
execute if entity @s[scores={defeated=2},team=REP] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},Unbreakable:1,HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REP] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:feather_falling",lvl:32767}],Unbreakable:1,HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REP] run give @s minecraft:carrot_on_a_stick{custom_model_data:6,display:{Name:'{"text":"Jetpack Boost","color":"gray","italic":false}'},HideFlags:1,Unbreakable:1,Tags:["jumppack"]} 1
execute if entity @s[scores={defeated=2},team=REP] run give @s minecraft:arrow{display:{Name:'{"text":"Blaster Bolt","italic":false}'}} 64

#b2-rp droid
execute if entity @s[scores={defeated=2},team=CIS] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"B2-RP Rocket Droid Head"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;-1313747275,1709130169,-1727420512,-965264263],Properties:{textures:[{Value:"ewogICJ0aW1lc3RhbXAiIDogMTYxMTY4OTA4MjU5MywKICAicHJvZmlsZUlkIiA6ICJiMWIxY2ViNTY1ZGY0MWI5OTkwOWE3YTBjNjc3M2M3OSIsCiAgInByb2ZpbGVOYW1lIiA6ICJNaWtoYWlsTUNyYWZ0IiwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzgwMDNlZWU1MTMxNWUwNWFmMjI2MjBjZDQxOTg0YzFhNmYwZDYzMmZlNDQ2ODJlODFlMjhiZGZlYzM0MWJjNzgiCiAgICB9CiAgfQp9"}]}},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=CIS] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Built-in Rocket Pack","color":"yellow","italic":false}',color:7567221},HideFlags:1,Tags:["actualjumppack"]} 1
execute if entity @s[scores={defeated=2},team=CIS] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:7567221},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=CIS] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:7567221},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:feather_falling",lvl:32767}],HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=CIS] run give @s minecraft:bow{display:{Name:'{"text":"Twin Wrist-Blaster","italic":false}'},Unbreakable:1,Enchantments:[{id:"infinity",lvl:1}]} 1
execute if entity @s[scores={defeated=2},team=CIS] run give @s minecraft:carrot_on_a_stick{custom_model_data:6,display:{Name:'{"text":"Jetpack Boost","color":"gray","italic":false}'},HideFlags:1,Unbreakable:1,Tags:["jumppack"]} 1
execute if entity @s[scores={defeated=2},team=CIS] run give @s minecraft:carrot_on_a_stick{custom_model_data:19,display:{Name:'{"text":"Wrist Rocket","color":"red","italic":false}'},HideFlags:32,Unbreakable:1,Tags:["wristrocket"]} 1
execute if entity @s[scores={defeated=2},team=CIS] run give @s minecraft:arrow{display:{Name:'{"text":"Blaster Bolt","italic":false}'},HideFlags:32} 1

execute unless entity @s[scores={defeated=2}] run tellraw @s {"text":"Nice try...\nYou can only spawn in as a new class if you have been defeated!","color":"red"}
execute if score @s respawnTick < @s respawnTime run tellraw @s {"text":"Nice try...\nYou must wait until the respawn timer has finished counting down!","color":"red"}
execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime run function battlefront:classes/spawnplayer