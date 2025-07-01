execute as @a[scores={clickStick=1,survCooldown=1..}] if items entity @s weapon *[custom_data~{survivor:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{survivor:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{survivor:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{survivor:true}] run effect give @s absorption 45 4 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{survivor:true}] at @s run playsound minecraft:item.armor.equip_iron master @s ~ ~50 ~ 999 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{survivor:true}] run scoreboard players set @s survCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{survivor:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={survCooldown=1..}] run scoreboard players add @s survCooldown 1
execute as @a[scores={survCooldown=400..}] run scoreboard players set @s survCooldown 0

#show cooldown on actionbar
execute as @a[scores={survCooldown=1..}] if items entity @s weapon *[custom_data~{survivor:true}] run scoreboard players operation @s secondsHelper = @s survCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={survCooldown=1..}] if items entity @s weapon *[custom_data~{survivor:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/20 seconds","color":"red"}]
execute as @a[scores={survCooldown=0}] if items entity @s weapon *[custom_data~{survivor:true}] run title @s actionbar {"text":"Ready!","color":"green"}