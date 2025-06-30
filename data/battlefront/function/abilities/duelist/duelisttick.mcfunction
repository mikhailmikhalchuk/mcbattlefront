execute as @a[scores={clickStick=1,duelCooldown=1..}] if items entity @s weapon *[custom_data~{duel:true}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"duelCooldown"},"color":"red"},{"text":" of 500 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,duelCooldown=1..}] if items entity @s weapon *[custom_data~{duel:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{duel:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{duel:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{duel:true}] at @s unless block ~ ~-1 ~ air run attribute @s minecraft:attack_speed base set 8.0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{duel:true}] at @s unless block ~ ~-1 ~ air run effect give @s strength 5 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{duel:true}] at @s unless block ~ ~-1 ~ air run scoreboard players set @s duelCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{duel:true}] at @s unless block ~ ~-1 ~ air run scoreboard players set @s duelDuration 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{duel:true}] at @s unless block ~ ~-1 ~ air run scoreboard players set @s clickStick 0
execute as @a[scores={duelCooldown=1..}] run scoreboard players add @s duelCooldown 1
execute as @a[scores={duelDuration=1..}] run scoreboard players add @s duelDuration 1
execute as @a[scores={duelDuration=100..}] run attribute @s minecraft:attack_speed base set 4.0
execute as @a[scores={duelDuration=100..}] run tellraw @s {"text":"Duelist ability expired.","color":"red"}
execute as @a[scores={duelDuration=100..}] run scoreboard players set @s duelDuration 0
execute as @a[scores={duelCooldown=500..}] run scoreboard players set @s duelCooldown 0

#show cooldown on actionbar
execute as @a[scores={duelCooldown=1..,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{duel:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"duelCooldown"},"color":"red"},{"text":"/500","color":"red"}]
execute as @a[scores={duelCooldown=0,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{duel:true}] run title @s actionbar {"text":"Ready!","color":"green"}