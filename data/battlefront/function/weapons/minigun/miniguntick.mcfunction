execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{minigun:true}] at @s anchored eyes positioned ~ ~1.5 ~ run summon arrow ~ ~ ~ {Tags:["mgprojectile","removegravity"]}
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{minigun:true}] at @s rotated as @s positioned 0.0 0 0.0 positioned ^ ^ ^5 summon area_effect_cloud run data modify entity @e[tag=mgprojectile,limit=1] Motion set from entity @s Pos
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{minigun:true}] run data modify entity @e[type=arrow,tag=mgprojectile,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{minigun:true}] at @s run playsound minecraft:entity.arrow.shoot block @a ~ ~ ~
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{minigun:true}] run scoreboard players set @s shotCooldown 1
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{minigun:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={shotCooldown=4..}] if items entity @s weapon *[custom_data~{minigun:true}] run scoreboard players set @s shotCooldown 0
execute as @e[tag=mgprojectile] run data modify entity @s damage set value 0.5
tag @e[tag=mgprojectile] remove mgprojectile
kill @e[tag=direction]