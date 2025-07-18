execute as @a[scores={clickStick=1,thermCooldown=1..}] if items entity @s weapon *[custom_data~{thermvision:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{thermvision:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{thermvision:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{thermvision:true}] run scoreboard players set @s thermCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{thermvision:true}] run scoreboard players set @s thermGlowing 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{thermvision:true}] run scoreboard players set @s clickStick 0
execute at @a[scores={thermGlowing=20}] run effect give @a[team=REP,distance=..25] glowing 1 0 true
execute at @a[scores={thermGlowing=60}] run effect give @a[team=REP,distance=..25] glowing 1 0 true
execute at @a[scores={thermGlowing=100}] run effect give @a[team=REP,distance=..25] glowing 1 0 true
execute at @a[scores={thermGlowing=140}] run effect give @a[team=REP,distance=..25] glowing 1 0 true
execute at @a[scores={thermGlowing=200}] run effect give @a[team=REP,distance=..25] glowing 1 0 true
execute as @a[scores={thermCooldown=1..}] run scoreboard players add @s thermCooldown 1
execute as @a[scores={thermGlowing=1..}] run scoreboard players add @s thermGlowing 1
execute as @a[scores={thermGlowing=201..}] run scoreboard players set @s thermGlowing 0
execute as @a[scores={thermCooldown=800..}] run scoreboard players set @s thermCooldown 0

#show cooldown on actionbar
execute as @a[scores={thermCooldown=1..}] if items entity @s weapon *[custom_data~{thermvision:true}] run scoreboard players operation @s secondsHelper = @s thermCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={thermCooldown=1..}] if items entity @s weapon *[custom_data~{thermvision:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/40 seconds","color":"red"}]
execute as @a[scores={thermCooldown=0}] if items entity @s weapon *[custom_data~{thermvision:true}] run title @s actionbar {"text":"Ready!","color":"green"}