execute as @a[scores={clickStick=1,intelCooldown=1..}] if items entity @s weapon *[custom_data~{impintel:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{impintel:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{impintel:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{impintel:true}] at @s run effect give @a[team=REB,limit=4,sort=nearest] glowing 10 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{impintel:true}] run scoreboard players set @s intelCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{impintel:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={intelCooldown=1..}] run scoreboard players add @s intelCooldown 1
execute as @a[scores={intelCooldown=600..}] run scoreboard players set @s intelCooldown 0

#show cooldown on actionbar
execute as @a[scores={intelCooldown=1..}] if items entity @s weapon *[custom_data~{impintel:true}] run scoreboard players operation @s secondsHelper = @s intelCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={intelCooldown=1..}] if items entity @s weapon *[custom_data~{impintel:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/30 seconds","color":"red"}]
execute as @a[scores={intelCooldown=0}] if items entity @s weapon *[custom_data~{impintel:true}] run title @s actionbar {"text":"Ready!","color":"green"}