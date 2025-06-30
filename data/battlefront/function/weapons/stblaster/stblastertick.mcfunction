execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{sithgun:true}] at @s anchored eyes positioned ~ ~1.5 ~ run summon arrow ~ ~ ~ {Tags:["stprojectile","removegravity"]}
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{sithgun:true}] at @s rotated as @s positioned 0.0 0 0.0 positioned ^ ^ ^5 summon area_effect_cloud run data modify entity @e[tag=stprojectile,limit=1] Motion set from entity @s Pos
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{sithgun:true}] run data modify entity @e[type=arrow,tag=stprojectile,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{sithgun:true}] at @s run playsound minecraft:stblast block @a ~ ~ ~ 0.3
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{sithgun:true}] run scoreboard players set @s shotCooldown 1
execute as @a[scores={clickStick=1,shotCooldown=1}] if items entity @s weapon *[custom_data~{sithgun:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={shotCooldown=4..}] if items entity @s weapon *[custom_data~{sithgun:true}] run scoreboard players set @s shotCooldown 0
tag @e[tag=stprojectile] add sdie
tag @e[tag=stprojectile] remove stprojectile
execute as @e[tag=sdie] run data modify entity @s damage set value 1.0
kill @e[tag=direction]

#switches gun between st/quarrel
execute as @a if items entity @s weapon.offhand *[custom_data={sithgun:true}] run give @s minecraft:carrot_on_a_stick[item_name={"color":"red","italic":false,"text":"Quarrel blast"},lore=[[{"italic":false,"text":"Press "},{"color":"blue","italic":false,"keybind":"key.swapOffhand"},{"italic":false,"text":" to switch to default fire"}]],unbreakable={},custom_data={quarrel:true}] 1
execute as @a if items entity @s weapon.offhand *[custom_data={sithgun:true}] run clear @s minecraft:carrot_on_a_stick[custom_data={sithgun:true}]
execute as @a if items entity @s weapon.offhand *[custom_data={quarrel:true}] run give @s minecraft:carrot_on_a_stick[item_name={"color":"red","italic":false,"text":"ST-W48 blaster"},lore=[[{"italic":false,"text":"Press "},{"color":"blue","italic":false,"keybind":"key.swapOffhand"},{"italic":false,"text":" to switch to quarrel blast"}]],unbreakable={},custom_data={sithgun:true}] 1
execute as @a if items entity @s weapon.offhand *[custom_data={quarrel:true}] run clear @s minecraft:carrot_on_a_stick[custom_data={quarrel:true}]