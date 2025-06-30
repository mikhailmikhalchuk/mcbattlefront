execute as @a[scores={clickStick=1,tranCooldown=1..}] if items entity @s weapon *[custom_data~{assaulttrain:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{assaulttrain:true}] run effect give @s speed 15 1 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{assaulttrain:true}] run effect give @s resistance 15 1 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{assaulttrain:true}] run scoreboard players set @s tranCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{assaulttrain:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={tranCooldown=1..}] run scoreboard players add @s tranCooldown 1
execute as @a[scores={tranCooldown=800..}] run scoreboard players set @s tranCooldown 0


#show cooldown on actionbar
execute as @a[scores={tranCooldown=1..}] if items entity @s weapon *[custom_data~{assaulttrain:true}] run scoreboard players operation @s secondsHelper = @s tranCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={tranCooldown=1..}] if items entity @s weapon *[custom_data~{assaulttrain:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/40 seconds","color":"red"}]
execute as @a[scores={tranCooldown=0}] if items entity @s weapon *[custom_data~{assaulttrain:true}] run title @s actionbar {"text":"Ready!","color":"green"}