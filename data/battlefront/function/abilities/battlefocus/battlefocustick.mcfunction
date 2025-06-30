execute as @a[scores={clickStick=1,bfocCooldown=1..}] if items entity @s weapon *[custom_data~{battlefocus:true}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"bfocCooldown"},"color":"red"},{"text":" of 750 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,bfocCooldown=1..}] if items entity @s weapon *[custom_data~{battlefocus:true}] run scoreboard players set @s clickStick 0
execute at @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run effect give @a[distance=..7,team=REP] resistance 10 0 true
execute at @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run scoreboard players set @a[distance=..7,team=REP] bfocDuration 1
execute at @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run tellraw @a[distance=1..7,team=REP] {"text":"Defended by nearby Clone Commando's Battle Focus!","color":"yellow"}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run scoreboard players set @s bfocCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={bfocCooldown=1..}] run scoreboard players add @s bfocCooldown 1
execute as @a[scores={bfocCooldown=750..}] run scoreboard players set @s bfocCooldown 0
execute as @a[scores={bfocDuration=1..}] run scoreboard players add @s insigDuration 1
execute as @a[scores={bfocDuration=200..}] run tellraw @s {"text":"Battle Focus expired.","color":"red"}
execute as @a[scores={bfocDuration=200..}] run scoreboard players set @s insigDuration 0

#show cooldown on actionbar
execute as @a[scores={bfocCooldown=1..,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"bfocCooldown"},"color":"red"},{"text":"/750","color":"red"}]
execute as @a[scores={bfocCooldown=0,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run title @s actionbar {"text":"Ready!","color":"green"}