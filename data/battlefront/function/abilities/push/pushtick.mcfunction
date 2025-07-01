execute as @a[scores={clickStick=1,pushCooldown=1..}] if items entity @s weapon *[custom_data~{push:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{push:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{push:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] at @s rotated ~ 0 positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["direction"]}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] at @s anchored eyes rotated ~ 0 positioned ~ ~1 ~ run summon wind_charge ~ ~ ~ {Tags:["pushprojectile1"]}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] at @s anchored eyes rotated ~ 0 positioned ~ ~1 ~ run summon wind_charge ~ ~ ~ {Tags:["pushprojectile2"]}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] at @s anchored eyes rotated ~ 0 positioned ~ ~1 ~ run summon wind_charge ~ ~ ~ {Tags:["pushprojectile3"]}
effect give @e[tag=pushprojectile1] invisibility infinite 255 true
effect give @e[tag=pushprojectile2] invisibility infinite 255 true
effect give @e[tag=pushprojectile3] invisibility infinite 255 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] run data modify entity @e[type=wind_charge,tag=pushprojectile1,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] run data modify entity @e[type=wind_charge,tag=pushprojectile1,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] run data modify entity @e[type=wind_charge,tag=pushprojectile2,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] run data modify entity @e[type=wind_charge,tag=pushprojectile2,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] run data modify entity @e[type=wind_charge,tag=pushprojectile3,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] run data modify entity @e[type=wind_charge,tag=pushprojectile3,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] at @s run playsound minecraft:entity.wind_charge.throw block @a ~ ~ ~
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] run scoreboard players set @s pushCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{push:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={pushCooldown=1..}] run scoreboard players add @s pushCooldown 1
execute as @a[scores={pushCooldown=400..}] run scoreboard players set @s pushCooldown 0
tag @e[tag=wrprojectile] remove wrprojectile
kill @e[tag=direction]

#show cooldown on actionbar
execute as @a[scores={pushCooldown=1..}] if items entity @s weapon *[custom_data~{push:true}] run scoreboard players operation @s secondsHelper = @s pushCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={pushCooldown=1..}] if items entity @s weapon *[custom_data~{push:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/20 seconds","color":"red"}]
execute as @a[scores={pushCooldown=0}] if items entity @s weapon *[custom_data~{push:true}] run title @s actionbar {"text":"Ready!","color":"green"}