execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{repeater:true}] at @s anchored eyes positioned ~ ~1.5 ~ run summon arrow ~ ~ ~ {Tags:["dcprojectile","removegravity"]}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{repeater:true}] at @s rotated as @s positioned 0.0 0 0.0 positioned ^ ^ ^5 summon area_effect_cloud run data modify entity @e[tag=dcprojectile,limit=1] Motion set from entity @s Pos
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{repeater:true}] run data modify entity @e[type=arrow,tag=dcprojectile,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{repeater:true}] at @s run playsound minecraft:entity.arrow.shoot block @a ~ ~ ~
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{repeater:true}] run scoreboard players set @s clickStick 0
execute as @e[tag=dcprojectile] run data modify entity @s damage set value 1
tag @e[tag=dcprojectile] remove dcprojectile
kill @e[tag=direction]