execute as @a[scores={clickStick=1,wrisCooldown=1..}] if items entity @s weapon *[custom_data~{wristrocket:true}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"wrisCooldown"},"color":"red"},{"text":" of 600 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,wrisCooldown=1..}] if items entity @s weapon *[custom_data~{wristrocket:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{wristrocket:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{wristrocket:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{wristrocket:true}] at @s positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["direction"]}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{wristrocket:true}] at @s positioned ~ ~1 ~ run summon fireball ~ ~ ~ {ExplosionPower:8,Tags:["wrprojectile"]}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{wristrocket:true}] run data modify entity @e[type=fireball,tag=wrprojectile,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{wristrocket:true}] run data modify entity @e[type=fireball,tag=wrprojectile,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{wristrocket:true}] at @s run playsound minecraft:item.firecharge.use block @a ~ ~ ~
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{wristrocket:true}] run scoreboard players set @s wrisCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{wristrocket:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={wrisCooldown=1..}] run scoreboard players add @s wrisCooldown 1
execute as @a[scores={wrisCooldown=600..}] run scoreboard players set @s wrisCooldown 0
tag @e[tag=wrprojectile] remove wrprojectile
kill @e[tag=direction]

#show cooldown on actionbar
execute as @a[scores={wrisCooldown=1..,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{wristrocket:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"wrisCooldown"},"color":"red"},{"text":"/600","color":"red"}]
execute as @a[scores={wrisCooldown=0,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{wristrocket:true}] run title @s actionbar {"text":"Ready!","color":"green"}