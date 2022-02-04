execute if entity @s[scores={defeated=2}] run clear @s
execute if entity @s[scores={defeated=2}] run give @s minecraft:crossbow{CustomModelData:75,display:{Name:'{"text":"Blaster","italic":false}'},Enchantments:[{id:"quick_charge",lvl:2}],Unbreakable:1} 1
execute if entity @s[scores={defeated=2}] run give @s minecraft:lingering_potion{Potion:"minecraft:luck",CustomModelData:52,CustomPotionColor:9934743,display:{Name:'{"text":"Thermal Detonator","color":"red","italic":false}'},HideFlags:32} 1
execute if entity @s[scores={defeated=2}] run give @s minecraft:arrow{display:{Name:'{"text":"Blaster Bolt","italic":false}'}} 64
execute if entity @s[scores={defeated=2}] run give @s minecraft:spectral_arrow{display:{Name:'[{"text":"Scan Dart","italic":false}]',Lore:['[{"text":"Temporarily reveals enemies hit with the dart","italic":false}]']}} 3

#fo stormtrooper
execute if entity @s[scores={defeated=2},team=FO] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Stormtrooper Helmet"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;17463700,-1511044720,-1773072435,-845257517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmJjMTM1NGVhNzZhZGZiOTNjNjBjY2VjYmNhODU5MzVjMjg4MjhlODk2ODhjMTA2ODFhYzhhMjY4NjJmYjgifX19"}]}},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=FO] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=FO] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=FO] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},HideFlags:1} 1

#imperial stormtrooper
execute if entity @s[scores={defeated=2},team=EMP] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Stormtrooper Helmet"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;1960732308,-1057210285,-1740874431,209500971],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzdjYTJhYThhOWY1ZDMyNDZlZTdmMmQwN2UxZDVmZDQ4MTkxMjVlY2RkZjVhNzJlMmY2NzUzNTVhM2I5YmNjIn19fQ=="}]}},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=EMP] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=EMP] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=EMP] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},HideFlags:1} 1

#resistance trooper
execute if entity @s[scores={defeated=2},team=RES] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Resistance Helmet"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;451192032,-1300805904,-2000805189,-172715614],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzZkYTk4ZDQxMjI0YzFmNDQxZGZhNTM1ODQ0MzNkNmY5OTRjMjk4YzM0YzliZDMwYWI4ZjU5ZmFjNDZmIn19fQ=="}]}},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=RES] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:6192150},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=RES] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:6192150},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=RES] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:6192150},HideFlags:1} 1

#rebel trooper
execute if entity @s[scores={defeated=2},team=REB] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Rebel Helmet"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;-1965596693,-1600306075,-1115639675,-393789049],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDFiYTgwZmRlZDM3YWU1NjdiNDI2NTg4ZmYyMzRiNTk1M2QwMWFiMjM2NmMwNDU1MmNiNjk1ZDk5ODlkNGQifX19"}]}},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REB] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:2844797},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REB] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:10329495},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REB] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:1908001},HideFlags:1} 1

#clone trooper
execute if entity @s[scores={defeated=2},team=REP] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Clone Trooper Helmet"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;-170455351,-1945746450,-1122853993,1114846727],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWE1OWVkNjg1ZmFkYTM2ZDJjNTViYTM2MDUwNDI2OTM0MDg5MjBmMzA0MTRmNzI3ZTE4ZTU1MjAxODllNmU3MyJ9fX0="}]}},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REP] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REP] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REP] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},HideFlags:1} 1

#battle droid
execute if entity @s[scores={defeated=2},team=CIS] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Battle Droid Head"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;-1881704273,2033666904,-2135594220,-486673924],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTA5OWQyMmY3YmRhNzZlMjFhNzkzYzdlNDA4ODUzZjVkZTY5YTIwNDU1YTJjY2EyOTA2ZTJmZjljZjhlMTFhNSJ9fX0="}]}},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=CIS] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:12296320},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=CIS] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:12296320},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=CIS] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:12296320},HideFlags:1} 1

execute unless entity @s[scores={defeated=2}] run tellraw @s {"text":"Nice try...\nYou can only spawn in as a new class if you have been defeated!","color":"red"}
execute if score @s respawnTick < @s respawnTime unless entity @s[scores={defeated=0}] run tellraw @s {"text":"Nice try...\nYou must wait until the respawn timer has finished counting down!","color":"red"}
execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime run function battlefront:classes/spawnplayer