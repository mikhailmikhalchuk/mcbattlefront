execute as @a[scores={clickStick=1,insigCooldown=1..}] if items entity @s weapon *[custom_data~{insight:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{insight:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{insight:true}] run scoreboard players set @s clickStick 0
execute at @a[scores={insigDuration=1..}] run effect give @a[team=FO,distance=..30] glowing 1 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{insight:true}] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~50 ~ 999 2
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{insight:true}] run scoreboard players set @s insigCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{insight:true}] run scoreboard players set @s insigDuration 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{insight:true}] run attribute @s attack_damage base set 1.1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{insight:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={insigCooldown=1..}] run scoreboard players add @s insigCooldown 1
execute as @a[scores={insigCooldown=500..}] run scoreboard players set @s insigCooldown 0
execute as @a[scores={insigDuration=1..}] run scoreboard players add @s insigDuration 1
execute as @a[scores={insigDuration=160..}] run tellraw @s {"text":"Insight ability expired.","color":"red"}
execute as @a[scores={insigDuration=160..}] run attribute @s attack_damage base reset
execute as @a[scores={insigDuration=160..}] run scoreboard players set @s insigDuration 0

#show cooldown on actionbar
execute as @a[scores={insigCooldown=1..}] if items entity @s weapon *[custom_data~{insight:true}] run scoreboard players operation @s secondsHelper = @s insigCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={insigCooldown=1..}] if items entity @s weapon *[custom_data~{insight:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/25 seconds","color":"red"}]
execute as @a[scores={insigCooldown=0}] if items entity @s weapon *[custom_data~{insight:true}] run title @s actionbar {"text":"Ready!","color":"green"}