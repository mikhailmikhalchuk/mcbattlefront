execute as @a[scores={clickStick=1,weakCooldown=1..}] if items entity @s weapon *[custom_data~{expose:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] unless predicate {condition:entity_properties,entity:this,predicate:{flags:{is_on_ground:true}}} run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{expose:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{expose:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] at @s run effect give @p[team=REP,distance=..6] slowness 10 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] at @s run effect clear @p[team=REP,distance=..6] absorption
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] at @s run tellraw @p[team=REP,distance=..6] {"text":"Hit by Count Dooku's expose weakness!","color":"red"}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] if entity @p[team=REP,distance=..6] at @s run tellraw @s ["",{"text":"Afflicted ","color":"green"},{"selector":"@p[team=REP,distance=..6]"},{"text":" with expose weakness.","color":"green"}]
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] at @s run playsound minecraft:block.barrel.close master @s ~ ~50 ~ 999 0.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] at @s run playsound minecraft:block.barrel.close master @p[team=REP,distance=..6] ~ ~50 ~ 999 0.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] at @s as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] if entity @p[team=REP,distance=..6] run scoreboard players set @s weakCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] at @s as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={weakCooldown=1..}] run scoreboard players add @s weakCooldown 1
execute as @a[scores={weakCooldown=600..}] run scoreboard players set @s weakCooldown 0

#show cooldown on actionbar
execute as @a[scores={weakCooldown=1..}] if items entity @s weapon *[custom_data~{expose:true}] run scoreboard players operation @s secondsHelper = @s weakCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={weakCooldown=1..}] if items entity @s weapon *[custom_data~{expose:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/30 seconds","color":"red"}]
execute as @a[scores={weakCooldown=0}] if items entity @s weapon *[custom_data~{expose:true}] run title @s actionbar {"text":"Ready!","color":"green"}