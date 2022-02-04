execute if entity @s[scores={defeated=2}] run clear @s
execute if entity @s[scores={defeated=2}] run give @s minecraft:bow{display:{Name:'{"text":"SE-44","italic":false}'},Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1} 1
execute if entity @s[scores={defeated=2}] run give @s minecraft:carrot_on_a_stick{custom_model_data:10,display:{Name:'{"text":"Battle Command","color":"blue","italic":false}',Lore:['{"text":"Temporarily gives nearby allies a health and damage boost","italic":false}']},HideFlags:32,Unbreakable:1,Tags:["bcom"]} 1
execute if entity @s[scores={defeated=2}] run give @s minecraft:arrow{display:{Name:'{"text":"Blaster Bolt","italic":false}'}} 1

#fo officer
execute if entity @s[scores={defeated=2},team=FO] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Officer Cap"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;492354484,1971604441,-2010997837,496491068],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWFiY2Q2OTg1M2JhNzMzOTRkZDI3YmNjNDlhMjVkMzZlOTFkNGUyYmE4MWFiMTU2Y2NkNjk4NzBmYWRhNzlhZiJ9fX0="}]}},HideFlags:1} 1

#imperial officer
execute if entity @s[scores={defeated=2},team=EMP] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Officer Cap"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;492354484,1971604441,-2010997837,496491068],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWFiY2Q2OTg1M2JhNzMzOTRkZDI3YmNjNDlhMjVkMzZlOTFkNGUyYmE4MWFiMTU2Y2NkNjk4NzBmYWRhNzlhZiJ9fX0="}]}},HideFlags:1} 1

#clone officer
execute if entity @s[scores={defeated=2},team=REP] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Clone Officer Helmet"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;-115439218,-1826796678,-1559837152,1961798209],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjhkNTRjOTU4NTM3Yzg1MWYyNjNlZGM1OTFlNWY0MGJjZjZhNzg1OGU4OWQzOWQ4ZGViMTRhMzRhZDQ1ZGZhYyJ9fX0="}]}},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REP] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REP] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=REP] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:16383998},HideFlags:1} 1

#battle droid officer
execute if entity @s[scores={defeated=2},team=CIS] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Battle Droid Head"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;-1881704273,2033666904,-2135594220,-486673924],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTA5OWQyMmY3YmRhNzZlMjFhNzkzYzdlNDA4ODUzZjVkZTY5YTIwNDU1YTJjY2EyOTA2ZTJmZjljZjhlMTFhNSJ9fX0="}]}},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=CIS] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:12296320},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=CIS] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:12296320},HideFlags:1} 1
execute if entity @s[scores={defeated=2},team=CIS] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Armor","color":"yellow","italic":false}',color:12296320},HideFlags:1} 1

execute unless entity @s[scores={defeated=2}] run tellraw @s {"text":"Nice try...\nYou can only spawn in as a new class if you have been defeated!","color":"red"}
execute if score @s respawnTick < @s respawnTime unless entity @s[scores={defeated=0}] run tellraw @s {"text":"Nice try...\nYou must wait until the respawn timer has finished counting down!","color":"red"}
execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime run function battlefront:classes/spawnplayer