execute as @a[scores={clickStick=1,rocketCooldown=1..}] if items entity @s weapon *[custom_data~{rocket:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{rocket:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{rocket:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rocket:true}] at @s positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["direction"]}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rocket:true}] at @s positioned ~ ~1 ~ run summon fireball ~ ~ ~ {ExplosionPower:3,Tags:["rocketprojectile"],Invulnerable:true}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rocket:true}] run data modify entity @e[type=fireball,tag=rocketprojectile,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rocket:true}] run data modify entity @e[type=fireball,tag=rocketprojectile,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rocket:true}] at @s run playsound minecraft:item.firecharge.use block @a ~ ~ ~
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rocket:true}] run scoreboard players set @s rocketCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rocket:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={rocketCooldown=1..}] run scoreboard players add @s rocketCooldown 1
execute as @a[scores={rocketCooldown=600..}] run scoreboard players set @s rocketCooldown 0
tag @e[tag=rocketprojectile] remove rocketprojectile
kill @e[tag=direction]

#show cooldown on actionbar
execute as @a[scores={rocketCooldown=1..}] if items entity @s weapon *[custom_data~{rocket:true}] run scoreboard players operation @s secondsHelper = @s rocketCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={rocketCooldown=1..}] if items entity @s weapon *[custom_data~{rocket:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/30 seconds","color":"red"}]
execute as @a[scores={rocketCooldown=0}] if items entity @s weapon *[custom_data~{rocket:true}] run title @s actionbar {"text":"Ready!","color":"green"}