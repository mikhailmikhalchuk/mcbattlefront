execute as @a[scores={clickStick=1,comRushCooldown=1..}] if items entity @s weapon *[custom_data~{comrush:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{comrush:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{comrush:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{comrush:true}] run effect give @s speed 12 1 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{comrush:true}] run scoreboard players set @s comRushCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{comrush:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={comRushCooldown=1..}] run scoreboard players add @s comRushCooldown 1
execute as @a[scores={comRushCooldown=440..}] run scoreboard players set @s comRushCooldown 0

#show cooldown on actionbar
execute as @a[scores={comRushCooldown=1..}] if items entity @s weapon *[custom_data~{comrush:true}] run scoreboard players operation @s secondsHelper = @s comRushCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={comRushCooldown=1..}] if items entity @s weapon *[custom_data~{comrush:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/22 seconds","color":"red"}]
execute as @a[scores={comRushCooldown=0}] if items entity @s weapon *[custom_data~{comrush:true}] run title @s actionbar {"text":"Ready!","color":"green"}