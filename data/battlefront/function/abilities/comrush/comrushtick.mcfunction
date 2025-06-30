execute as @a[scores={clickStick=1,rushCooldown=1..}] if items entity @s weapon *[custom_data~{comrush:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{comrush:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{comrush:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{comrush:true}] run effect give @s speed 15 1 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{comrush:true}] run scoreboard players set @s rushCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{comrush:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={rushCooldown=1..}] run scoreboard players add @s rushCooldown 1
execute as @a[scores={rushCooldown=800..}] run scoreboard players set @s rushCooldown 0

#show cooldown on actionbar
execute as @a[scores={rushCooldown=1..}] if items entity @s weapon *[custom_data~{comrush:true}] run scoreboard players operation @s secondsHelper = @s rushCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={rushCooldown=1..}] if items entity @s weapon *[custom_data~{comrush:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/40 seconds","color":"red"}]
execute as @a[scores={rushCooldown=0}] if items entity @s weapon *[custom_data~{comrush:true}] run title @s actionbar {"text":"Ready!","color":"green"}