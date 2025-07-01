execute as @a[scores={clickStick=1,seekCooldown=1..}] if items entity @s weapon *[custom_data~{seektactic:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{seektactic:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{seektactic:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{seektactic:true}] at @s run effect give @a[team=RES,limit=4,sort=nearest] glowing 10 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{seektactic:true}] run scoreboard players set @s seekCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{seektactic:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={seekCooldown=1..}] run scoreboard players add @s seekCooldown 1
execute as @a[scores={seekCooldown=200..}] run scoreboard players set @s seekCooldown 0

#show cooldown on actionbar
execute as @a[scores={seekCooldown=1..}] if items entity @s weapon *[custom_data~{seektactic:true}] run scoreboard players operation @s secondsHelper = @s seekCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={seekCooldown=1..}] if items entity @s weapon *[custom_data~{seektactic:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/10 seconds","color":"red"}]
execute as @a[scores={seekCooldown=0}] if items entity @s weapon *[custom_data~{seektactic:true}] run title @s actionbar {"text":"Ready!","color":"green"}