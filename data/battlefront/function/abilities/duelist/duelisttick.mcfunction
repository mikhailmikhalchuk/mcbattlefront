execute as @a[scores={clickStick=1,duelCooldown=1..}] if items entity @s weapon *[custom_data~{duel:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{duel:true}] unless predicate {condition:entity_properties,entity:this,predicate:{flags:{is_on_ground:true}}} run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{duel:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{duel:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{duel:true}] at @s run attribute @s minecraft:attack_speed base set 4.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{duel:true}] at @s run effect give @s strength 5 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{duel:true}] at @s run scoreboard players set @s duelCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{duel:true}] at @s run scoreboard players set @s duelDuration 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{duel:true}] at @s run scoreboard players set @s clickStick 0
execute as @a[scores={duelCooldown=1..}] run scoreboard players add @s duelCooldown 1
execute as @a[scores={duelDuration=1..}] run scoreboard players add @s duelDuration 1
execute as @a[scores={duelDuration=200..}] run attribute @s minecraft:attack_speed base reset
execute as @a[scores={duelDuration=200..}] run tellraw @s {"text":"Duelist ability expired.","color":"red"}
execute as @a[scores={duelDuration=200..}] run scoreboard players set @s duelDuration 0
execute as @a[scores={duelCooldown=500..}] run scoreboard players set @s duelCooldown 0

#show cooldown on actionbar
execute as @a[scores={duelCooldown=1..}] if items entity @s weapon *[custom_data~{duel:true}] run scoreboard players operation @s secondsHelper = @s duelCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={duelCooldown=1..}] if items entity @s weapon *[custom_data~{duel:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/25 seconds","color":"red"}]
execute as @a[scores={duelCooldown=0}] if items entity @s weapon *[custom_data~{duel:true}] run title @s actionbar {"text":"Ready!","color":"green"}