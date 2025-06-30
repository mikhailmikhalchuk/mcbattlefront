execute as @a[scores={clickStick=1,mindCooldown=1..}] if items entity @s weapon *[custom_data~{mindtrick:true}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"mindCooldown"},"color":"red"},{"text":" of 600 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,mindCooldown=1..}] if items entity @s weapon *[custom_data~{mindtrick:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{mindtrick:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{mindtrick:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{mindtrick:true}] at @s unless block ~ ~-1 ~ air if entity @p[distance=..5,team=FO] run effect give @a[distance=..5,team=FO] slowness 5 3 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{mindtrick:true}] at @s unless block ~ ~-1 ~ air if entity @p[distance=..5,team=FO] run effect give @a[distance=..5,team=FO] nausea 5 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{mindtrick:true}] at @s unless block ~ ~-1 ~ air if entity @p[distance=..5,team=FO] run effect give @a[distance=..5,team=FO] blindness 5 50 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{mindtrick:true}] at @s unless block ~ ~-1 ~ air if entity @p[distance=..5,team=FO] run tellraw @a[distance=..5,team=FO] {"text":"Hit by Rey's mind trick!","color":"red"}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{mindtrick:true}] at @s unless block ~ ~-1 ~ air if entity @p[distance=..5,team=FO] run tellraw @s ["",{"text":"Afflicted ","color":"green"},{"selector":"@a[distance=..5,team=FO]"},{"text":" with mind trick.","color":"green"}]
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{mindtrick:true}] at @s unless block ~ ~-1 ~ air if entity @p[distance=..5,team=FO] run title @a[distance=..5,team=FO] title {"text":"iAMthesenatenotyet","obfuscated":true}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{mindtrick:true}] at @s unless block ~ ~-1 ~ air if entity @p[distance=..5,team=FO] run title @a[distance=..5,team=FO] subtitle {"text":"butyoubelongtoreachyourbodyyourarmor","obfuscated":true}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{mindtrick:true}] at @s unless block ~ ~-1 ~ air if entity @p[distance=..5,team=FO] run scoreboard players set @p[team=FO,distance=..5] abilitiesBlocked 100
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{mindtrick:true}] at @s unless block ~ ~-1 ~ air if entity @p[distance=..5,team=FO] run scoreboard players set @s mindCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{mindtrick:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={mindCooldown=1..}] run scoreboard players add @s mindCooldown 1
execute as @a[scores={mindCooldown=600..}] run scoreboard players set @s mindCooldown 0

#show cooldown on actionbar
execute as @a[scores={mindCooldown=1..}] if items entity @s weapon *[custom_data~{mindtrick:true}] run scoreboard players operation @s secondsHelper = @s mindCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={mindCooldown=1..}] if items entity @s weapon *[custom_data~{mindtrick:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/30 seconds","color":"red"}]
execute as @a[scores={mindCooldown=0}] if items entity @s weapon *[custom_data~{mindtrick:true}] run title @s actionbar {"text":"Ready!","color":"green"}