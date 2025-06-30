execute as @a[scores={clickStick=1,weakCooldown=1..}] if items entity @s weapon *[custom_data~{expose:true}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"weakCooldown"},"color":"red"},{"text":" of 600 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,weakCooldown=1..}] if items entity @s weapon *[custom_data~{expose:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{expose:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{expose:true}] run scoreboard players set @s clickStick 0
execute at @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] unless block ~ ~-1 ~ air run effect give @p[team=REP,distance=..6] weakness 10 0 true
execute at @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] unless block ~ ~-1 ~ air run effect clear @p[team=REP,distance=..6] absorption
execute at @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] unless block ~ ~-1 ~ air run tellraw @p[team=REP,distance=..6] {"text":"Hit by Count Dooku's expose weakness!","color":"red"}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] at @s unless block ~ ~-1 ~ air run tellraw @s ["",{"text":"Afflicted ","color":"green"},{"selector":"@p[team=REP,distance=..6]"},{"text":" with expose weakness.","color":"green"}]
execute at @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] unless block ~ ~-1 ~ air as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] if entity @p[team=REP,distance=..6] run scoreboard players set @s weakCooldown 1
execute at @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{expose:true}] unless block ~ ~-1 ~ air run scoreboard players set @s clickStick 0
execute as @a[scores={weakCooldown=1..}] run scoreboard players add @s weakCooldown 1
execute as @a[scores={weakCooldown=600..}] run scoreboard players set @s weakCooldown 0

#show cooldown on actionbar
execute as @a[scores={weakCooldown=1..,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{expose:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"weakCooldown"},"color":"red"},{"text":"/600","color":"red"}]
execute as @a[scores={weakCooldown=0,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{expose:true}] run title @s actionbar {"text":"Ready!","color":"green"}