execute as @a[scores={clickStick=1,jetpackDashCooldown=1..}] if items entity @s weapon *[custom_data~{jetpackdash:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{jetpackdash:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{jetpackdash:true}] run scoreboard players set @s clickStick 0

execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] run tag @s add skipDash
execute as @a[scores={clickStick=1},nbt={OnGround:true}] if items entity @s weapon *[custom_data~{jetpackdash:true}] run tag @s remove skipDash
execute as @a[scores={clickStick=1}] at @s if items entity @s weapon *[custom_data~{jetpackdash:true}] unless block ~ ~-2 ~ minecraft:air run tag @s remove skipDash

execute as @a[tag=skipDash] run scoreboard players set @s clickStick 0

execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] at @s run gamemode creative @s
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] at @s run tp @s ~ ~10000 ~

#forward dash

execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^ ^-2 summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^ ^-3 summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:true,left:false,right:false}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^10 ^ summon end_crystal run damage @s 0

#backward dash

execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{backward:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^ ^2 summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{backward:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^ ^3 summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{backward:true,left:false,right:false}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^10 ^ summon end_crystal run damage @s 0

#left dash

execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{left:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^-2 ^ ^ summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{left:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^-3 ^ ^ summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{left:true,backward:false,forward:false}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^10 ^ summon end_crystal run damage @s 0

#right dash

execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{right:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^2 ^ ^ summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{right:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^3 ^ ^ summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{right:true,backward:false,forward:false}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^10 ^ summon end_crystal run damage @s 0

#prevent diagonal directions from launching into the air

execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{left:true,forward:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^2 ^ summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{left:true,forward:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^6 ^ summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{right:true,forward:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^2 ^ summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{right:true,forward:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^6 ^ summon end_crystal run damage @s 0

execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{left:true,backward:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^2 ^ summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{left:true,backward:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^6 ^ summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{right:true,backward:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^2 ^ summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{right:true,backward:true}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^6 ^ summon end_crystal run damage @s 0

#default case

execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:false,backward:false,left:false,right:false}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^ ^2 summon end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:false,backward:false,left:false,right:false}}}} at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^ ^3 summon end_crystal run damage @s 0

execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] at @s run tp @s ~ ~-10000 ~
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] at @s run gamemode adventure @s
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] run playsound item.firecharge.use master @s ~ ~50 ~ 999 1.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] run scoreboard players set @s jetpackDashCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jetpackdash:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={jetpackDashCooldown=1..}] run scoreboard players add @s jetpackDashCooldown 1
execute as @a[scores={jetpackDashCooldown=1..10}] at @s rotated ~ 0 positioned ^-0.2 ^ ^-0.3 run particle minecraft:flame ~ ~1 ~ 0 0 0 0 0
execute as @a[scores={jetpackDashCooldown=1..10}] at @s rotated ~ 0 positioned ^0.2 ^ ^-0.3 run particle minecraft:flame ~ ~1 ~ 0 0 0 0 0
execute as @a[scores={jetpackDashCooldown=200..}] run scoreboard players set @s jetpackDashCooldown 0

#show cooldown on actionbar
execute as @a[scores={jetpackDashCooldown=1..}] if items entity @s weapon *[custom_data~{jetpackdash:true}] run scoreboard players operation @s secondsHelper = @s jetpackDashCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={jetpackDashCooldown=1..}] if items entity @s weapon *[custom_data~{jetpackdash:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/10 seconds","color":"red"}]
execute as @a[scores={jetpackDashCooldown=0}] if items entity @s weapon *[custom_data~{jetpackdash:true}] run title @s actionbar {"text":"Ready!","color":"green"}