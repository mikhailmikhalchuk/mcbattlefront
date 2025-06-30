execute as @a[scores={clickStick=1,jumpCooldown=1..}] if items entity @s weapon *[custom_data~{jumppack:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{jumppack:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{jumppack:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] run effect give @s levitation 1 10 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] run scoreboard players set @s jumpCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{jumppack:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={jumpCooldown=1..}] run scoreboard players add @s jumpCooldown 1
execute as @a[scores={jumpCooldown=500..}] run scoreboard players set @s jumpCooldown 0

#show cooldown on actionbar
execute as @a[scores={jumpCooldown=1..}] if items entity @s weapon *[custom_data~{jumppack:true}] run scoreboard players operation @s secondsHelper = @s jumpCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={jumpCooldown=1..}] if items entity @s weapon *[custom_data~{jumppack:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/25 seconds","color":"red"}]
execute as @a[scores={jumpCooldown=0}] if items entity @s weapon *[custom_data~{jumppack:true}] run title @s actionbar {"text":"Ready!","color":"green"}