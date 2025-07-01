execute as @a[scores={clickStick=1,damageTaken=..2499}] if items entity @s weapon *[custom_data~{retribution:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{retribution:true}] unless predicate {condition:entity_properties,entity:this,predicate:{flags:{is_on_ground:true}}} run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{retribution:true}] at @s if entity @a[team=CIS,distance=..7] run scoreboard players set @s damageTaken 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{retribution:true}] at @s if entity @a[team=CIS,distance=..7] run scoreboard players set @s retribDuration 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{retribution:true}] at @s if entity @a[team=CIS,distance=..7] run effect give @s slowness 3 7 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{retribution:true}] at @s if entity @a[team=CIS,distance=..7] run summon armor_stand ~ ~ ~ {Tags:["retribCircleGen"],Invisible:true,Invulnerable:true}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{retribution:true}] at @s if entity @a[team=CIS,distance=..7] run effect give @s resistance 3 3 true
execute as @a[scores={retribDuration=1}] if items entity @s weapon *[custom_data~{retribution:true}] at @s if entity @a[team=CIS,distance=..7] run effect give @a[team=CIS,distance=..7] instant_damage 1 0 true
execute as @a[scores={retribDuration=21}] if items entity @s weapon *[custom_data~{retribution:true}] at @s if entity @a[team=CIS,distance=..7] run effect give @a[team=CIS,distance=..7] instant_damage 1 0 true
execute as @a[scores={retribDuration=41}] if items entity @s weapon *[custom_data~{retribution:true}] at @s if entity @a[team=CIS,distance=..7] run effect give @a[team=CIS,distance=..7] instant_damage 1 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{retribution:true}] at @s if entity @a[team=CIS,distance=..7] run effect give @a[team=CIS,distance=..7] slowness 3 7 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{retribution:true}] at @s if entity @a[team=CIS,distance=..7] run scoreboard players set @s clickStick 0
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run particle cloud ^ ^ ^7
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run particle cloud ^ ^ ^-7
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run particle cloud ^ ^ ^7
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run particle cloud ^ ^ ^-7
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run particle cloud ^ ^ ^7
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run particle cloud ^ ^ ^-7
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run particle cloud ^ ^ ^7
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run particle cloud ^ ^ ^-7
execute as @a[scores={retribDuration=1..}] run scoreboard players add @s retribDuration 1
execute as @a[scores={retribDuration=60..}] run kill @e[type=armor_stand,tag=retribCircleGen]
execute as @a[scores={retribDuration=60..}] run scoreboard players set @s retribDuration 0

#show cooldown on actionbar
execute as @a[scores={damageTaken=..2499}] if items entity @s weapon *[custom_data~{retribution:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"damageTaken"},"color":"red"},{"text":"/2500 damage received","color":"red"}]
execute as @a[scores={damageTaken=2500..}] if items entity @s weapon *[custom_data~{retribution:true}] run title @s actionbar {"text":"Ready!","color":"green"}