execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime unless entity @a[scores={CIShero=1}] run clear @s
execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime unless entity @a[scores={CIShero=1}] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"General Grievous\'s Head"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],SkullOwner:{Id:[I;1092055589,1569735545,-1101140384,439364547],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjJmNWZmODE2MWQ0NTFkNmUyZTdlMTg2Y2I0NmE2NDQ0MTRkZDFlNDQ0MzdjZDdhNWY0ZjQxN2JmOTM2MTk3In19fQ=="}]}},HideFlags:1} 1
execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime unless entity @a[scores={CIShero=1}] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Clothes","color":"yellow","italic":false}',color:13945773},HideFlags:1} 1
execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime unless entity @a[scores={CIShero=1}] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Clothes","color":"yellow","italic":false}',color:13945773},HideFlags:1} 1
execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime unless entity @a[scores={CIShero=1}] run item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Clothes","color":"yellow","italic":false}',color:13945773},HideFlags:1} 1
execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime unless entity @a[scores={CIShero=1}] run item replace entity @s weapon.offhand with diamond_sword{CustomModelData:103,display:{Name:'{"text":"General Grievous\'s Lightsaber","color":"red","italic":false}'},Enchantments:[{id:"minecraft:sharpness",lvl:2}],Unbreakable:1} 1
execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime unless entity @a[scores={CIShero=1}] run give @s diamond_sword{CustomModelData:100,display:{Name:'{"text":"General Grievous\'s Lightsaber","color":"red","italic":false}'},Enchantments:[{id:"minecraft:sharpness",lvl:2}],Unbreakable:1} 1
execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime unless entity @a[scores={CIShero=1}] run give @s minecraft:carrot_on_a_stick{custom_model_data:16,display:{Name:'{"text":"Thrust Surge","color":"blue","italic":false}',Lore:['{"text":"Launches Grievous towards the closest enemy","italic":false}']},HideFlags:32,Unbreakable:1,Tags:["thrust"]} 1
execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime unless entity @a[scores={CIShero=1}] run attribute @s minecraft:generic.max_health base set 40
execute if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime unless entity @a[scores={CIShero=1}] run effect give @s jump_boost 10000 2 true
execute unless entity @s[scores={defeated=2}] run tellraw @s {"text":"Nice try...\nYou can only spawn in as a new class if you have been defeated!","color":"red"}
execute if score @s respawnTick < @s respawnTime unless entity @s[scores={defeated=0}] run tellraw @s {"text":"Nice try...\nYou must wait until the respawn timer has finished counting down!","color":"red"}
execute if entity @s[scores={defeated=2}] if entity @a[scores={CIShero=1}] run tellraw @s {"text":"There's already a hero for your team on the battlefront.","color":"red"}
execute if entity @s[scores={defeated=2}] if entity @a[scores={CIShero=1}] run scoreboard players set @s showDelay 60
execute unless entity @a[scores={CIShero=1}] if score @s respawnTick >= @s respawnTime if score @s defeated matches 2 run scoreboard players set @s CIShero 1
execute unless entity @a[scores={CIShero=1},distance=1..] if entity @s[scores={defeated=2}] if score @s respawnTick >= @s respawnTime run function battlefront:classes/spawnplayer