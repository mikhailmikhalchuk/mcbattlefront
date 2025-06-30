#capture resistance command post
execute at @a[team=FO] as @e[type=armor_stand,team=RES,tag=B,distance=..5] unless entity @a[team=RES,distance=..5] unless score @s postB matches 1 run scoreboard players remove @s postB 1
execute at @a[team=RES] as @e[type=armor_stand,team=RES,tag=B,distance=..5] unless entity @a[team=FO,distance=..5] unless score @s postB matches 200 run scoreboard players add @s postB 1
execute at @e[type=armor_stand,team=FO,tag=B] as @e[type=armor_stand,team=FO,tag=B] if score @s postB matches 200 run setblock ~ ~-1 ~ minecraft:red_stained_glass replace
execute as @e[type=armor_stand,team=RES,tag=B] if score @s postB matches 1 run tellraw @a {"text":"The First Order has captured command post B.","color":"red"}
execute as @e[type=armor_stand,team=RES,tag=B] if score @s postB matches 1 run bossbar set battlefront:postb color red
execute as @e[type=armor_stand,team=RES,tag=B] if score @s postB matches 1 run waypoint modify @s color red
execute as @e[type=armor_stand,team=RES,tag=B] if score @s postB matches 1 run team join FO @s

execute as @e[type=armor_stand,tag=B] if score @s postB matches 1 run scoreboard players set @s postB 200

#capture first order command post
execute at @a[team=RES] as @e[type=armor_stand,team=FO,tag=B,distance=..5] unless entity @a[team=FO,distance=..5] unless score @s postB matches 1 run scoreboard players remove @s postB 1
execute at @a[team=FO] as @e[type=armor_stand,team=FO,tag=B,distance=..5] unless entity @a[team=RES,distance=..5] unless score @s postB matches 200 run scoreboard players add @s postB 1
execute at @e[type=armor_stand,team=RES,tag=B] as @e[type=armor_stand,team=RES,tag=B] if score @s postB matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=FO,tag=B] if score @s postB matches 1 run tellraw @a {"text":"The Resistance has captured command post B.","color":"blue"}
execute as @e[type=armor_stand,team=FO,tag=B] if score @s postB matches 1 run bossbar set battlefront:postb color blue
execute as @e[type=armor_stand,team=FO,tag=B] if score @s postB matches 1 run waypoint modify @s color blue
execute as @e[type=armor_stand,team=FO,tag=B] if score @s postB matches 1 run team join RES @s

execute as @e[type=armor_stand,tag=B] if score @s postB matches 1 run scoreboard players set @s postB 200

#capture rebellion command post
execute at @a[team=EMP] as @e[type=armor_stand,team=REB,tag=B,distance=..5] unless entity @a[team=REB,distance=..5] unless score @s postB matches 1 run scoreboard players remove @s postB 1
execute at @a[team=REB] as @e[type=armor_stand,team=REB,tag=B,distance=..5] unless entity @a[team=EMP,distance=..5] unless score @s postB matches 200 run scoreboard players add @s postB 1
execute at @e[type=armor_stand,team=EMP,tag=B] as @e[type=armor_stand,team=EMP,tag=B] if score @s postB matches 200 run setblock ~ ~-1 ~ minecraft:red_stained_glass replace
execute as @e[type=armor_stand,team=REB,tag=B] if score @s postB matches 1 run tellraw @a {"text":"The Empire has captured command post B.","color":"red"}
execute as @e[type=armor_stand,team=REB,tag=B] if score @s postB matches 1 run bossbar set battlefront:postb color red
execute as @e[type=armor_stand,team=REB,tag=B] if score @s postB matches 1 run waypoint modify @s color red
execute as @e[type=armor_stand,team=REB,tag=B] if score @s postB matches 1 run team join EMP @s

execute as @e[type=armor_stand,tag=B] if score @s postB matches 1 run scoreboard players set @s postB 200

#capture imperial command post
execute at @a[team=REB] as @e[type=armor_stand,team=EMP,tag=B,distance=..5] unless entity @a[team=EMP,distance=..5] unless score @s postB matches 1 run scoreboard players remove @s postB 1
execute at @a[team=EMP] as @e[type=armor_stand,team=EMP,tag=B,distance=..5] unless entity @a[team=REB,distance=..5] unless score @s postB matches 200 run scoreboard players add @s postB 1
execute at @e[type=armor_stand,team=REB,tag=B] as @e[type=armor_stand,team=REB,tag=B] if score @s postB matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=EMP,tag=B] if score @s postB matches 1 run tellraw @a {"text":"The Rebellion has captured command post B.","color":"blue"}
execute as @e[type=armor_stand,team=EMP,tag=B] if score @s postB matches 1 run bossbar set battlefront:postb color blue
execute as @e[type=armor_stand,team=EMP,tag=B] if score @s postB matches 1 run waypoint modify @s color blue
execute as @e[type=armor_stand,team=EMP,tag=B] if score @s postB matches 1 run team join REB @s

execute as @e[type=armor_stand,tag=B] if score @s postB matches 1 run scoreboard players set @s postB 200

#capture republic command post
execute at @a[team=CIS] as @e[type=armor_stand,team=REP,tag=B,distance=..5] unless entity @a[team=REP,distance=..5] unless score @s postB matches 1 run scoreboard players remove @s postB 1
execute at @a[team=REP] as @e[type=armor_stand,team=REP,tag=B,distance=..5] unless entity @a[team=CIS,distance=..5] unless score @s postB matches 200 run scoreboard players add @s postB 1
execute at @e[type=armor_stand,team=CIS,tag=B] as @e[type=armor_stand,team=CIS,tag=B] if score @s postB matches 200 run setblock ~ ~-1 ~ minecraft:red_stained_glass replace
execute as @e[type=armor_stand,team=REP,tag=B] if score @s postB matches 1 run tellraw @a {"text":"The Confederacy has captured command post B.","color":"red"}
execute as @e[type=armor_stand,team=REP,tag=B] if score @s postB matches 1 run bossbar set battlefront:postb color red
execute as @e[type=armor_stand,team=REP,tag=B] if score @s postB matches 1 run waypoint modify @s color red
execute as @e[type=armor_stand,team=REP,tag=B] if score @s postB matches 1 run team join CIS @s

execute as @e[type=armor_stand,tag=B] if score @s postB matches 1 run scoreboard players set @s postB 200

#capture separatist command post
execute at @a[team=REP] as @e[type=armor_stand,team=CIS,tag=B,distance=..5] unless entity @a[team=CIS,distance=..5] unless score @s postB matches 1 run scoreboard players remove @s postB 1
execute at @a[team=CIS] as @e[type=armor_stand,team=CIS,tag=B,distance=..5] unless entity @a[team=REP,distance=..5] unless score @s postB matches 200 run scoreboard players add @s postB 1
execute at @e[type=armor_stand,team=REP,tag=B] as @e[type=armor_stand,team=REP,tag=B] if score @s postB matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=CIS,tag=B] if score @s postB matches 1 run tellraw @a {"text":"The Republic has captured command post B.","color":"blue"}
execute as @e[type=armor_stand,team=CIS,tag=B] if score @s postB matches 1 run bossbar set battlefront:postb color blue
execute as @e[type=armor_stand,team=CIS,tag=B] if score @s postB matches 1 run waypoint modify @s color blue
execute as @e[type=armor_stand,team=CIS,tag=B] if score @s postB matches 1 run team join REP @s

bossbar set battlefront:postb players
execute at @e[type=armor_stand,tag=B] run bossbar set battlefront:postb players @a[distance=..5]
execute as @e[type=armor_stand,tag=B] run scoreboard players operation @s postReadable = @s postB
execute as @e[type=armor_stand,tag=B] store result bossbar battlefront:postb value run scoreboard players get @s postReadable
execute as @e[type=armor_stand,tag=B] if score @s postB matches 1 run scoreboard players set @s postB 200