execute as @a[scores={clickStick=1,quarCooldown=1..}] if items entity @s weapon *[custom_data~{quarrel:true}] run tellraw @s ["",{"text":"Weapon cooling down!\n","color":"red"},{"score":{"name":"*","objective":"quarCooldown"},"color":"red"},{"text":" of 60 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,quarCooldown=1..}] if items entity @s weapon *[custom_data~{quarrel:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{quarrel:true}] at @s positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["direction"]}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{quarrel:true}] at @s positioned ~ ~1 ~ run summon fireball ~ ~ ~ {Tags:["quarprojectile"]}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{quarrel:true}] run data modify entity @e[type=fireball,tag=quarprojectile,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{quarrel:true}] run data modify entity @e[type=fireball,tag=quarprojectile,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{quarrel:true}] run scoreboard players set @s quarCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{quarrel:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={quarCooldown=1..}] run scoreboard players add @s quarCooldown 1
execute as @a[scores={quarCooldown=60..}] run scoreboard players set @s quarCooldown 0
tag @e[tag=quarprojectile] remove quarprojectile
kill @e[tag=direction]