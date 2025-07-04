execute as @a[scores={clickStick=1,auraCooldown=1..}] if items entity @s weapon *[custom_data~{darkaura:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{darkaura:true}] run scoreboard players set @s auraDuration 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{darkaura:true}] at @s run summon armor_stand ~ ~ ~ {Tags:["auraCircleGen"],Invisible:true,Invulnerable:true}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{darkaura:true}] run scoreboard players set @s auraCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{darkaura:true}] run playsound entity.lightning_bolt.thunder master @a ~ ~50 ~ 999 2
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run particle squid_ink ^ ^ ^10
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run particle squid_ink ^ ^ ^-10
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run particle squid_ink ^ ^ ^10
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run particle squid_ink ^ ^ ^-10
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run particle squid_ink ^ ^ ^10
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run particle squid_ink ^ ^ ^-10
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run particle squid_ink ^ ^ ^10
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run particle squid_ink ^ ^ ^-10
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run particle squid_ink ^ ^ ^10
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run particle squid_ink ^ ^ ^-10
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run particle squid_ink ^ ^ ^10
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run particle squid_ink ^ ^ ^-10
execute as @a[scores={auraCooldown=1..}] run scoreboard players add @s auraCooldown 1
execute as @a[scores={auraDuration=1..}] run scoreboard players add @s auraDuration 1
execute as @a[scores={auraDuration=20}] at @s run effect give @a[team=REB,distance=..10] wither 1 1 true
execute as @a[scores={auraDuration=40}] at @s run effect give @a[team=REB,distance=..10] wither 1 1 true
execute as @a[scores={auraDuration=60}] at @s run effect give @a[team=REB,distance=..10] wither 1 1 true
execute as @a[scores={auraDuration=80}] at @s run effect give @a[team=REB,distance=..10] wither 1 1 true
execute as @a[scores={auraDuration=100}] at @s run effect give @a[team=REB,distance=..10] wither 1 1 true
execute as @a[scores={auraDuration=120}] at @s run effect give @a[team=REB,distance=..10] wither 1 1 true
execute as @a[scores={auraDuration=140}] at @s run effect give @a[team=REB,distance=..10] wither 1 1 true
execute as @a[scores={auraDuration=160}] at @s run effect give @a[team=REB,distance=..10] wither 1 1 true
execute as @a[scores={auraDuration=1..}] at @s rotated 0 ~ run tp @e[tag=auraCircleGen,limit=1] ~ ~ ~
execute as @e[type=armor_stand,tag=auraCircleGen] rotated 0 ~ at @s run tp @s ~ ~ ~ ~10 ~
execute as @a[scores={auraDuration=160..}] run scoreboard players set @s auraDuration 0
execute as @a[scores={auraCooldown=500..}] run scoreboard players set @s auraCooldown 0

execute unless entity @a[scores={auraDuration=1..}] run kill @e[type=armor_stand,tag=auraCircleGen]

#show cooldown on actionbar
execute as @a[scores={auraCooldown=1..}] if items entity @s weapon *[custom_data~{darkaura:true}] run scoreboard players operation @s secondsHelper = @s auraCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={auraCooldown=1..}] if items entity @s weapon *[custom_data~{darkaura:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/25 seconds","color":"red"}]
execute as @a[scores={auraCooldown=0}] if items entity @s weapon *[custom_data~{darkaura:true}] run title @s actionbar {"text":"Ready!","color":"green"}