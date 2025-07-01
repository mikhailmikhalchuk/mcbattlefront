execute as @a[scores={clickStick=1,pullCooldown=1..}] if items entity @s weapon *[custom_data~{pull:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{pull:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"} 
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{pull:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{pull:true}] at @s anchored eyes facing entity @p[team=RES,distance=..10] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] if entity @a[team=RES,distance=..10] run scoreboard players set @s pullCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{pull:true}] at @s anchored eyes facing entity @p[team=RES,distance=..10] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run tp @p[team=RES,distance=..10] ^ ^ ^1 facing entity @s
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{pull:true}] at @s anchored eyes facing entity @p[team=RES,distance=..10] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run effect give @p[team=RES,distance=..10] instant_damage 1 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{pull:true}] at @s anchored eyes facing entity @p[team=RES,distance=..10] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run playsound minecraft:entity.breeze.inhale master @a ~ ~50 ~ 999 2
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{pull:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={pullCooldown=1..}] run scoreboard players add @s pullCooldown 1
execute as @a[scores={pullCooldown=400..}] run scoreboard players set @s pullCooldown 0

#show cooldown on actionbar
execute as @a[scores={pullCooldown=1..}] if items entity @s weapon *[custom_data~{pull:true}] run scoreboard players operation @s secondsHelper = @s pullCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={pullCooldown=1..}] if items entity @s weapon *[custom_data~{pull:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/20 seconds","color":"red"}]
execute as @a[scores={pullCooldown=0}] if items entity @s weapon *[custom_data~{pull:true}] run title @s actionbar {"text":"Ready!","color":"green"}