execute as @a[scores={clickStick=1,elecCooldown=1..}] if items entity @s weapon *[custom_data~{lightning:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] at @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{lightning:true}] run summon minecraft:lightning_bolt ^ ^ ^5 {Tags:["sheevel"]}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{lightning:true}] run data modify entity @e[type=lightning_bolt,tag=sheevel,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{lightning:true}] run scoreboard players set @s elecCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{lightning:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={elecCooldown=1..}] run scoreboard players add @s elecCooldown 1
execute as @a[scores={elecCooldown=30..}] run scoreboard players set @s elecCooldown 0