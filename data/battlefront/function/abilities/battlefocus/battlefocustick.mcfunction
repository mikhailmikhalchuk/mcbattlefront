execute as @a[scores={clickStick=1,bfocCooldown=1..}] if items entity @s weapon *[custom_data~{battlefocus:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] at @s run effect give @s resistance 10 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] at @s run tag @s add bfocSource
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] at @s run summon armor_stand ~ ~ ~ {Tags:["bfocCircleGen"],Invisible:true,Invulnerable:true}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] at @s run scoreboard players set @s bfocDuration 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] at @s run tellraw @a[distance=1..7,team=REP] {"text":"Defended by nearby Clone Commando's Battle Focus!","color":"yellow"}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run playsound item.armor.equip_diamond master @a[distance=..7,team=REP] ~ ~50 ~ 999 2
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run scoreboard players set @s bfocCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{battlefocus:true}] run scoreboard players set @s clickStick 0
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run particle minecraft:crit ^ ^1 ^7 0 0 0 0 1 normal @p[tag=bfocSource]
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run particle minecraft:crit ^ ^1 ^-7 0 0 0 0 1 normal @p[tag=bfocSource]
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run particle minecraft:crit ^ ^1 ^7 0 0 0 0 1 normal @p[tag=bfocSource]
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run particle minecraft:crit ^ ^1 ^-7 0 0 0 0 1 normal @p[tag=bfocSource]
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run particle minecraft:crit ^ ^1 ^7 0 0 0 0 1 normal @p[tag=bfocSource]
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run particle minecraft:crit ^ ^1 ^-7 0 0 0 0 1 normal @p[tag=bfocSource]
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run particle minecraft:crit ^ ^1 ^7 0 0 0 0 1 normal @p[tag=bfocSource]
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run particle minecraft:crit ^ ^1 ^-7 0 0 0 0 1 normal @p[tag=bfocSource]
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run particle minecraft:crit ^ ^1 ^7 0 0 0 0 1 normal @p[tag=bfocSource]
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run particle minecraft:crit ^ ^1 ^-7 0 0 0 0 1 normal @p[tag=bfocSource]
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run particle minecraft:crit ^ ^1 ^7 0 0 0 0 1 normal @p[tag=bfocSource]
execute as @e[type=armor_stand,tag=bfocCircleGen] rotated 0 ~ at @s run particle minecraft:crit ^ ^1 ^-7 0 0 0 0 1 normal @p[tag=bfocSource]
execute as @a[scores={bfocCooldown=1..}] run scoreboard players add @s bfocCooldown 1
execute as @a[scores={bfocCooldown=800..}] run scoreboard players set @s bfocCooldown 0
execute as @a[scores={bfocDuration=1..}] run scoreboard players add @s bfocDuration 1
execute as @a[scores={bfocDuration=1..},tag=bfocSource] at @s rotated 0 ~ run tp @e[tag=bfocCircleGen,limit=1,sort=nearest] ~ ~ ~
execute as @a[scores={bfocDuration=200..}] run tellraw @s {"text":"Battle Focus expired.","color":"red"}
execute as @a[scores={bfocDuration=200..}] run tag @s remove bfocSource
execute as @a[scores={bfocDuration=200..}] run kill @e[type=armor_stand,tag=bfocCircleGen]
execute as @a[scores={bfocDuration=200..}] run scoreboard players set @s bfocDuration 0

execute as @a[tag=bfocSource] at @s run tellraw @a[distance=..7,team=REP,tag=!bfocAffected,tag=!bfocSource] {"text":"Defended by nearby Clone Commando's Battle Focus!","color":"yellow"}
execute as @a[tag=bfocSource] at @s run tag @a[distance=..7,team=REP,tag=!bfocSource] add bfocAffected
execute as @a[tag=bfocSource] at @s run effect give @a[distance=..7,team=REP,tag=!bfocSource] resistance 1 0 true

#show cooldown on actionbar
execute as @a[scores={bfocCooldown=1..}] if items entity @s weapon *[custom_data~{battlefocus:true}] run scoreboard players operation @s secondsHelper = @s bfocCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={bfocCooldown=1..}] if items entity @s weapon *[custom_data~{battlefocus:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/40 seconds","color":"red"}]
execute as @a[scores={bfocCooldown=0}] if items entity @s weapon *[custom_data~{battlefocus:true}] run title @s actionbar {"text":"Ready!","color":"green"}