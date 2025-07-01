execute as @a[scores={clickStick=1,bfocCooldown=1..}] if items entity @s weapon *[custom_data~{battlefocus:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] at @s run effect give @a[distance=..7,team=REP] resistance 10 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] at @s run scoreboard players set @a[distance=..7,team=REP] bfocDuration 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] at @s run tellraw @a[distance=1..7,team=REP] {"text":"Defended by nearby Clone Commando's Battle Focus!","color":"yellow"}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run playsound block.beacon.activate master @s ~ ~50 ~ 999 2
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run scoreboard players set @s bfocCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={bfocCooldown=1..}] run scoreboard players add @s bfocCooldown 1
execute as @a[scores={bfocCooldown=800..}] run scoreboard players set @s bfocCooldown 0
execute as @a[scores={bfocDuration=1..}] run scoreboard players add @s bfocDuration 1
execute as @a[scores={bfocDuration=200..}] run tellraw @s {"text":"Battle Focus expired.","color":"red"}
execute as @a[scores={bfocDuration=200..}] run scoreboard players set @s bfocDuration 0

#show cooldown on actionbar
execute as @a[scores={bfocCooldown=1..}] if items entity @s weapon *[custom_data~{battlefocus:true}] run scoreboard players operation @s secondsHelper = @s bfocCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={bfocCooldown=1..}] if items entity @s weapon *[custom_data~{battlefocus:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/40 seconds","color":"red"}]
execute as @a[scores={bfocCooldown=0}] if items entity @s weapon *[custom_data~{battlefocus:true}] run title @s actionbar {"text":"Ready!","color":"green"}