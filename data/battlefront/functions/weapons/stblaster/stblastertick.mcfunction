execute as @a[scores={clickStick=1,stCooldown=0},nbt={SelectedItem:{tag:{Tags:["sithgun"]}}}] at @s positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["direction"]}
execute as @a[scores={clickStick=1,stCooldown=0},nbt={SelectedItem:{tag:{Tags:["sithgun"]}}}] at @s positioned ~ ~1 ~ run summon arrow ~ ~ ~ {Tags:["stprojectile"]}
execute as @a[scores={clickStick=1,stCooldown=0},nbt={SelectedItem:{tag:{Tags:["sithgun"]}}}] run data modify entity @e[type=arrow,tag=stprojectile,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
execute as @a[scores={clickStick=1,stCooldown=0},nbt={SelectedItem:{tag:{Tags:["sithgun"]}}}] run data modify entity @e[type=arrow,tag=stprojectile,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1,stCooldown=0},nbt={SelectedItem:{tag:{Tags:["sithgun"]}}}] at @s run playsound minecraft:stblast block @a ~ ~ ~ 0.3
execute as @a[scores={clickStick=1,stCooldown=0},nbt={SelectedItem:{tag:{Tags:["sithgun"]}}}] run scoreboard players set @s stCooldown 1
execute as @a[scores={clickStick=1,stCooldown=1},nbt={SelectedItem:{tag:{Tags:["sithgun"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={stCooldown=1..}] run scoreboard players add @s stCooldown 1
execute as @a[scores={stCooldown=3..}] run scoreboard players set @s stCooldown 0
tag @e[tag=stprojectile] add sdie
tag @e[tag=stprojectile] remove stprojectile
execute as @e[tag=sdie] run data modify entity @s damage set value 1.0
kill @e[tag=direction]

#switches gun between st/quarrel
execute at @e[type=item,nbt={Item:{tag:{Tags:["sithgun"]}}}] if data entity @e[type=item,nbt={Item:{tag:{Tags:["sithgun"]}}},limit=1] Thrower run give @p minecraft:carrot_on_a_stick{custom_model_data:9,display:{Name:'{"text":"Quarrel blast","color":"red","italic":false}'},HideFlags:32,Unbreakable:1,Tags:["quarrel"]} 1
execute as @e[type=item,nbt={Item:{tag:{Tags:["sithgun"]}}}] run kill @s
execute at @e[type=item,nbt={Item:{tag:{Tags:["quarrel"]}}}] if data entity @e[type=item,nbt={Item:{tag:{Tags:["quarrel"]}}},limit=1] Thrower run give @p minecraft:carrot_on_a_stick{custom_model_data:8,display:{Name:'{"text":"ST-W48 blaster","color":"red","italic":false}'},HideFlags:32,Unbreakable:1,Tags:["sithgun"]} 1
execute as @e[type=item,nbt={Item:{tag:{Tags:["quarrel"]}}}] run kill @s