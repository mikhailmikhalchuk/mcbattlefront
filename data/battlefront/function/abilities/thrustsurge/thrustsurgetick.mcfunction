execute as @a[scores={clickStick=1,thrustCooldown=1..}] if items entity @s weapon *[custom_data~{thrust:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{thrust:true}] unless predicate {condition:entity_properties,entity:this,predicate:{flags:{is_on_ground:true}}} run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{thrust:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{thrust:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{thrust:true}] at @s anchored eyes facing entity @p[team=REP,distance=..15] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] unless block ~ ~-1 ~ air if entity @a[team=REP,distance=..15] run scoreboard players set @s thrustCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{thrust:true}] at @s anchored eyes facing entity @p[team=REP,distance=..15] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 unless block ~ ~-1 ~ air run effect give @p[team=REP,distance=..15] instant_damage 1 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{thrust:true}] at @s anchored eyes facing entity @p[team=REP,distance=..15] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 unless block ~ ~-1 ~ air at @a[team=REP,distance=..15,limit=1] if items entity @s weapon.mainhand *[custom_data~{thrust:true}] run tp @s ^ ^0.5 ^1 facing entity @a[team=REP,distance=..15,limit=1]
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{thrust:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={thrustCooldown=1..}] run scoreboard players add @s thrustCooldown 1
execute as @a[scores={thrustCooldown=260..}] run scoreboard players set @s thrustCooldown 0

#show cooldown on actionbar
execute as @a[scores={thrustCooldown=1..}] if items entity @s weapon *[custom_data~{thrust:true}] run scoreboard players operation @s secondsHelper = @s thrustCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={thrustCooldown=1..}] if items entity @s weapon *[custom_data~{thrust:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/13 seconds","color":"red"}]
execute as @a[scores={thrustCooldown=0}] if items entity @s weapon *[custom_data~{thrust:true}] run title @s actionbar {"text":"Ready!","color":"green"}