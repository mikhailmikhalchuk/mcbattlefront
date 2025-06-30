#capture resistance command post
execute at @a[team=FO] as @e[type=armor_stand,team=RES,tag=D,distance=..5] unless entity @a[team=RES,distance=..5] unless score @s postD matches 1 run scoreboard players remove @s postD 1
execute at @a[team=RES] as @e[type=armor_stand,team=RES,tag=D,distance=..5] unless entity @a[team=FO,distance=..5] unless score @s postD matches 200 run scoreboard players add @s postD 1
execute at @e[type=armor_stand,team=FO,tag=D] as @e[type=armor_stand,team=FO,tag=D] if score @s postD matches 200 run setblock ~ ~-1 ~ minecraft:red_stained_glass replace
execute as @e[type=armor_stand,team=RES,tag=D] if score @s postD matches 1 run tellraw @a {"text":"The First Order has captured command post D.","color":"red"}
execute as @e[type=armor_stand,team=RES,tag=D] if score @s postD matches 1 run bossbar set battlefront:postd color red
execute as @e[type=armor_stand,team=RES,tag=D] if score @s postD matches 1 run waypoint modify @s color red
execute as @e[type=armor_stand,team=RES,tag=D] if score @s postD matches 1 run team join FO @s

execute as @e[type=armor_stand,tag=D] if score @s postD matches 1 run scoreboard players set @s postD 200

#capture first order command post
execute at @a[team=RES] as @e[type=armor_stand,team=FO,tag=D,distance=..5] unless entity @a[team=FO,distance=..5] unless score @s postD matches 1 run scoreboard players remove @s postD 1
execute at @a[team=FO] as @e[type=armor_stand,team=FO,tag=D,distance=..5] unless entity @a[team=RES,distance=..5] unless score @s postD matches 200 run scoreboard players add @s postD 1
execute at @e[type=armor_stand,team=RES,tag=D] as @e[type=armor_stand,team=RES,tag=D] if score @s postD matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=FO,tag=D] if score @s postD matches 1 run tellraw @a {"text":"The Resistance has captured command post D.","color":"blue"}
execute as @e[type=armor_stand,team=FO,tag=D] if score @s postD matches 1 run bossbar set battlefront:postd color blue
execute as @e[type=armor_stand,team=FO,tag=D] if score @s postD matches 1 run waypoint modify @s color blue
execute as @e[type=armor_stand,team=FO,tag=D] if score @s postD matches 1 run team join RES @s

execute as @e[type=armor_stand,tag=D] if score @s postD matches 1 run scoreboard players set @s postD 200

#capture rebellion command post
execute at @a[team=EMP] as @e[type=armor_stand,team=REB,tag=D,distance=..5] unless entity @a[team=REB,distance=..5] unless score @s postD matches 1 run scoreboard players remove @s postD 1
execute at @a[team=REB] as @e[type=armor_stand,team=REB,tag=D,distance=..5] unless entity @a[team=EMP,distance=..5] unless score @s postD matches 200 run scoreboard players add @s postD 1
execute at @e[type=armor_stand,team=EMP,tag=D] as @e[type=armor_stand,team=EMP,tag=D] if score @s postD matches 200 run setblock ~ ~-1 ~ minecraft:red_stained_glass replace
execute as @e[type=armor_stand,team=REB,tag=D] if score @s postD matches 1 run tellraw @a {"text":"The Empire has captured command post D.","color":"red"}
execute as @e[type=armor_stand,team=REB,tag=D] if score @s postD matches 1 run bossbar set battlefront:postd color red
execute as @e[type=armor_stand,team=REB,tag=D] if score @s postD matches 1 run waypoint modify @s color red
execute as @e[type=armor_stand,team=REB,tag=D] if score @s postD matches 1 run team join EMP @s

execute as @e[type=armor_stand,tag=D] if score @s postD matches 1 run scoreboard players set @s postD 200

#capture imperial command post
execute at @a[team=REB] as @e[type=armor_stand,team=EMP,tag=D,distance=..5] unless entity @a[team=EMP,distance=..5] unless score @s postD matches 1 run scoreboard players remove @s postD 1
execute at @a[team=EMP] as @e[type=armor_stand,team=EMP,tag=D,distance=..5] unless entity @a[team=REB,distance=..5] unless score @s postD matches 200 run scoreboard players add @s postD 1
execute at @e[type=armor_stand,team=REB,tag=D] as @e[type=armor_stand,team=REB,tag=D] if score @s postD matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=EMP,tag=D] if score @s postD matches 1 run tellraw @a {"text":"The Rebellion has captured command post D.","color":"blue"}
execute as @e[type=armor_stand,team=EMP,tag=D] if score @s postD matches 1 run bossbar set battlefront:postd color blue
execute as @e[type=armor_stand,team=EMP,tag=D] if score @s postD matches 1 run waypoint modify @s color blue
execute as @e[type=armor_stand,team=EMP,tag=D] if score @s postD matches 1 run team join REB @s

execute as @e[type=armor_stand,tag=D] if score @s postD matches 1 run scoreboard players set @s postD 200

#capture republic command post
execute at @a[team=CIS] as @e[type=armor_stand,team=REP,tag=D,distance=..5] unless entity @a[team=REP,distance=..5] unless score @s postD matches 1 run scoreboard players remove @s postD 1
execute at @a[team=REP] as @e[type=armor_stand,team=REP,tag=D,distance=..5] unless entity @a[team=CIS,distance=..5] unless score @s postD matches 200 run scoreboard players add @s postD 1
execute at @e[type=armor_stand,team=CIS,tag=D] as @e[type=armor_stand,team=CIS,tag=D] if score @s postD matches 200 run setblock ~ ~-1 ~ minecraft:red_stained_glass replace
execute as @e[type=armor_stand,team=REP,tag=D] if score @s postD matches 1 run tellraw @a {"text":"The Confederacy has captured command post D.","color":"red"}
execute as @e[type=armor_stand,team=REP,tag=D] if score @s postD matches 1 run bossbar set battlefront:postd color red
execute as @e[type=armor_stand,team=REP,tag=D] if score @s postD matches 1 run waypoint modify @s color red
execute as @e[type=armor_stand,team=REP,tag=D] if score @s postD matches 1 run team join CIS @s

execute as @e[type=armor_stand,tag=D] if score @s postD matches 1 run scoreboard players set @s postD 200

#capture separatist command post
execute at @a[team=REP] as @e[type=armor_stand,team=CIS,tag=D,distance=..5] unless entity @a[team=CIS,distance=..5] unless score @s postD matches 1 run scoreboard players remove @s postD 1
execute at @a[team=CIS] as @e[type=armor_stand,team=CIS,tag=D,distance=..5] unless entity @a[team=REP,distance=..5] unless score @s postD matches 200 run scoreboard players add @s postD 1
execute at @e[type=armor_stand,team=REP,tag=D] as @e[type=armor_stand,team=REP,tag=D] if score @s postD matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=CIS,tag=D] if score @s postD matches 1 run tellraw @a {"text":"The Republic has captured command post D.","color":"blue"}
execute as @e[type=armor_stand,team=CIS,tag=D] if score @s postD matches 1 run bossbar set battlefront:postd color blue
execute as @e[type=armor_stand,team=CIS,tag=D] if score @s postD matches 1 run waypoint modify @s color blue
execute as @e[type=armor_stand,team=CIS,tag=D] if score @s postD matches 1 run team join REP @s

bossbar set battlefront:postd players
execute at @e[type=armor_stand,tag=D] run bossbar set battlefront:postd players @a[distance=..5]
execute as @e[type=armor_stand,tag=D] run scoreboard players operation @s postReadable = @s postD
execute as @e[type=armor_stand,tag=D] store result bossbar battlefront:postd value run scoreboard players get @s postReadable
execute as @e[type=armor_stand,tag=D] if score @s postD matches 1 run scoreboard players set @s postD 200