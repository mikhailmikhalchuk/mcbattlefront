execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{phasblaster:true}] at @s anchored eyes positioned ~ ~1.5 ~ run summon arrow ~ ~ ~ {Tags:["phasprojectile","removegravity"]}
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{phasblaster:true}] at @s rotated as @s positioned 0.0 0 0.0 positioned ^ ^ ^5 summon area_effect_cloud run data modify entity @e[tag=phasprojectile,limit=1] Motion set from entity @s Pos
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{phasblaster:true}] at @s run data modify entity @e[type=arrow,tag=phasprojectile,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{phasblaster:true}] at @s run playsound minecraft:phasblast block @a ~ ~ ~ 0.4
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{phasblaster:true}] run scoreboard players set @s shotCooldown 1
execute as @a[scores={clickStick=1,shotCooldown=0}] if items entity @s weapon *[custom_data~{phasblaster:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={shotCooldown=3..}] if items entity @s weapon *[custom_data~{phasblaster:true}] run scoreboard players set @s shotCooldown 0
execute as @e[tag=phasprojectile] run data modify entity @s damage set value 1
tag @e[tag=phasprojectile] remove phasprojectile
kill @e[tag=direction]