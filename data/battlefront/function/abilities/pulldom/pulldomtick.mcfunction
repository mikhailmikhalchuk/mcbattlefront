execute as @a[scores={clickStick=1,domiCooldown=1..}] if items entity @s weapon *[custom_data~{dominance:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] unless predicate {condition:entity_properties,entity:this,predicate:{flags:{is_on_ground:true}}} run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s run scoreboard players set @s domiCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s anchored eyes facing entity @p[team=CIS,distance=..10] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run damage @p[team=CIS,distance=..10] 6 player_attack by @s
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s anchored eyes facing entity @p[team=CIS,distance=..10] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run tp @p[team=CIS,distance=..10] ^ ^1 ^1 facing entity @s
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s run playsound minecraft:entity.breeze.inhale master @a ~ ~50 ~ 999 2
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^0.5 ^0.25 ^0.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^-0.5 ^0.25 ^0.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^1 ^0.25 ^1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^-1 ^0.25 ^1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^1.25 ^0.25 ^1.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^-1.25 ^0.25 ^1.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^1.5 ^0.25 ^2
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^-1.5 ^0.25 ^2
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^1.75 ^0.25 ^2.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^-1.75 ^0.25 ^2.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^2 ^0.25 ^3
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^-2 ^0.25 ^3
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^2.25 ^0.25 ^3.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^-2.25 ^0.25 ^3.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^1.75 ^0.25 ^3.75
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^-1.75 ^0.25 ^3.75
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^1.25 ^0.25 ^3.85
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^-1.25 ^0.25 ^3.85
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^0.75 ^0.25 ^3.9
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^-0.75 ^0.25 ^3.9
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] at @s rotated ~ 0 run particle cloud ^ ^0.25 ^3.95
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{dominance:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={domiCooldown=1..}] run scoreboard players add @s domiCooldown 1
execute as @a[scores={domiCooldown=300..}] run scoreboard players set @s domiCooldown 0

#show cooldown on actionbar
execute as @a[scores={domiCooldown=1..}] if items entity @s weapon *[custom_data~{dominance:true}] run scoreboard players operation @s secondsHelper = @s domiCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={domiCooldown=1..}] if items entity @s weapon *[custom_data~{dominance:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/15 seconds","color":"red"}]
execute as @a[scores={domiCooldown=0}] if items entity @s weapon *[custom_data~{dominance:true}] run title @s actionbar {"text":"Ready!","color":"green"}