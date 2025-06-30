execute as @a[scores={clickStick=1,restrCooldown=1..}] if items entity @s weapon *[custom_data~{restrict:true}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"restrCooldown"},"color":"red"},{"text":" of 750 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,restrCooldown=1..}] if items entity @s weapon *[custom_data~{restrict:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{restrict:true}] at @s unless block ~ ~-1 ~ air if entity @p[team=CIS,distance=..6] run scoreboard players set @p[team=CIS,distance=..6] abilitiesBlocked 100
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{restrict:true}] at @s unless block ~ ~-1 ~ air if entity @p[team=CIS,distance=..6] run tellraw @p[team=CIS,distance=..6] {"text":"Hit by Obi-Wan Kenobi's restrictive mind trick!","color":"red"}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{restrict:true}] at @s unless block ~ ~-1 ~ air if entity @p[team=CIS,distance=..6] run tellraw @s ["",{"text":"Restricted the abilities of ","color":"green"},{"selector":"@a[distance=..6,team=CIS]"},{"text":".","color":"green"}]
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{restrict:true}] at @s unless block ~ ~-1 ~ air if entity @p[team=CIS,distance=..6] run scoreboard players set @s restrCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{restrict:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={restrCooldown=1..}] run scoreboard players add @s restrCooldown 1
execute as @a[scores={restrCooldown=750..}] run scoreboard players set @s restrCooldown 0

#show cooldown on actionbar
execute as @a[scores={restrCooldown=1..,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{restrict:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"restrCooldown"},"color":"red"},{"text":"/750","color":"red"}]
execute as @a[scores={restrCooldown=0,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{restrict:true}] run title @s actionbar {"text":"Ready!","color":"green"}