execute as @a[scores={clickStick=1,jumpCooldown=1..}] if items entity @s weapon *[custom_data~{jumppack:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{jumppack:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{jumppack:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] at @s run gamemode creative @s
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] at @s run tp @s ~ ~10000 ~
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^ ^-2 summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^ ^-2 summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] at @s run tp @s ~ ~-10000 ~
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] at @s run gamemode adventure @s
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] run effect give @s levitation 1 17 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] run playsound item.firecharge.use master @s ~ ~50 ~ 999 1.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] run scoreboard players set @s jumpCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={jumpCooldown=1..}] run scoreboard players add @s jumpCooldown 1
execute as @a[scores={jumpCooldown=300..}] run scoreboard players set @s jumpCooldown 0

#show cooldown on actionbar
execute as @a[scores={jumpCooldown=1..}] if items entity @s weapon *[custom_data~{jumppack:true}] run scoreboard players operation @s secondsHelper = @s jumpCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={jumpCooldown=1..}] if items entity @s weapon *[custom_data~{jumppack:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/15 seconds","color":"red"}]
execute as @a[scores={jumpCooldown=0}] if items entity @s weapon *[custom_data~{jumppack:true}] run title @s actionbar {"text":"Ready!","color":"green"}