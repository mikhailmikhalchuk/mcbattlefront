#capture resistance command post
execute at @a[team=FO] as @e[type=armor_stand,team=RES,tag=E,distance=..5] unless entity @a[team=RES,distance=..5] unless score @s postE matches 1 run scoreboard players remove @s postE 1
execute at @a[team=RES] as @e[type=armor_stand,team=RES,tag=E,distance=..5] unless entity @a[team=FO,distance=..5] unless score @s postE matches 200 run scoreboard players add @s postE 1
execute at @e[type=armor_stand,team=FO,tag=E] as @e[type=armor_stand,team=FO,tag=E] if score @s postE matches 200 run setblock ~ ~-1 ~ minecraft:red_stained_glass replace
execute as @e[type=armor_stand,team=RES,tag=E] if score @s postE matches 1 run tellraw @a {"text":"The First Order has captured command post E.","color":"red"}
execute as @e[type=armor_stand,team=RES,tag=E] if score @s postE matches 1 run bossbar set battlefront:poste color red
execute as @e[type=armor_stand,team=RES,tag=E] if score @s postE matches 1 run waypoint modify @s color red
execute as @e[type=armor_stand,team=RES,tag=E] if score @s postE matches 1 run team join FO @s

execute as @e[type=armor_stand,tag=E] if score @s postE matches 1 run scoreboard players set @s postE 200

#capture first order command post
execute at @a[team=RES] as @e[type=armor_stand,team=FO,tag=E,distance=..5] unless entity @a[team=FO,distance=..5] unless score @s postE matches 1 run scoreboard players remove @s postE 1
execute at @a[team=FO] as @e[type=armor_stand,team=FO,tag=E,distance=..5] unless entity @a[team=RES,distance=..5] unless score @s postE matches 200 run scoreboard players add @s postE 1
execute at @e[type=armor_stand,team=RES,tag=E] as @e[type=armor_stand,team=RES,tag=E] if score @s postE matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=FO,tag=E] if score @s postE matches 1 run tellraw @a {"text":"The Resistance has captured command post E.","color":"blue"}
execute as @e[type=armor_stand,team=FO,tag=E] if score @s postE matches 1 run bossbar set battlefront:poste color blue
execute as @e[type=armor_stand,team=FO,tag=E] if score @s postE matches 1 run waypoint modify @s color blue
execute as @e[type=armor_stand,team=FO,tag=E] if score @s postE matches 1 run team join RES @s

execute as @e[type=armor_stand,tag=E] if score @s postE matches 1 run scoreboard players set @s postE 200

#capture rebellion command post
execute at @a[team=EMP] as @e[type=armor_stand,team=REB,tag=E,distance=..5] unless entity @a[team=REB,distance=..5] unless score @s postE matches 1 run scoreboard players remove @s postE 1
execute at @a[team=REB] as @e[type=armor_stand,team=REB,tag=E,distance=..5] unless entity @a[team=EMP,distance=..5] unless score @s postE matches 200 run scoreboard players add @s postE 1
execute at @e[type=armor_stand,team=EMP,tag=E] as @e[type=armor_stand,team=EMP,tag=E] if score @s postE matches 200 run setblock ~ ~-1 ~ minecraft:red_stained_glass replace
execute as @e[type=armor_stand,team=REB,tag=E] if score @s postE matches 1 run tellraw @a {"text":"The Empire has captured command post E.","color":"red"}
execute as @e[type=armor_stand,team=REB,tag=E] if score @s postE matches 1 run bossbar set battlefront:poste color red
execute as @e[type=armor_stand,team=REB,tag=E] if score @s postE matches 1 run waypoint modify @s color red
execute as @e[type=armor_stand,team=REB,tag=E] if score @s postE matches 1 run team join EMP @s

execute as @e[type=armor_stand,tag=E] if score @s postE matches 1 run scoreboard players set @s postE 200

#capture imperial command post
execute at @a[team=REB] as @e[type=armor_stand,team=EMP,tag=E,distance=..5] unless entity @a[team=EMP,distance=..5] unless score @s postE matches 1 run scoreboard players remove @s postE 1
execute at @a[team=EMP] as @e[type=armor_stand,team=EMP,tag=E,distance=..5] unless entity @a[team=REB,distance=..5] unless score @s postE matches 200 run scoreboard players add @s postE 1
execute at @e[type=armor_stand,team=REB,tag=E] as @e[type=armor_stand,team=REB,tag=E] if score @s postE matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=EMP,tag=E] if score @s postE matches 1 run tellraw @a {"text":"The Rebellion has captured command post E.","color":"blue"}
execute as @e[type=armor_stand,team=EMP,tag=E] if score @s postE matches 1 run bossbar set battlefront:poste color blue
execute as @e[type=armor_stand,team=EMP,tag=E] if score @s postE matches 1 run waypoint modify @s color blue
execute as @e[type=armor_stand,team=EMP,tag=E] if score @s postE matches 1 run team join REB @s

#capture republic command post
execute at @a[team=CIS] as @e[type=armor_stand,team=REP,tag=E,distance=..5] unless entity @a[team=REP,distance=..5] unless score @s postE matches 1 run scoreboard players remove @s postE 1
execute at @a[team=REP] as @e[type=armor_stand,team=REP,tag=E,distance=..5] unless entity @a[team=CIS,distance=..5] unless score @s postE matches 200 run scoreboard players add @s postE 1
execute at @e[type=armor_stand,team=CIS,tag=E] as @e[type=armor_stand,team=CIS,tag=E] if score @s postE matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=REP,tag=E] if score @s postE matches 1 run tellraw @a {"text":"The Confederacy has captured command post E.","color":"red"}
execute as @e[type=armor_stand,team=REP,tag=E] if score @s postE matches 1 run bossbar set battlefront:poste color red
execute as @e[type=armor_stand,team=REP,tag=E] if score @s postE matches 1 run waypoint modify @s color red
execute as @e[type=armor_stand,team=REP,tag=E] if score @s postE matches 1 run team join CIS @s

#capture separatist command post
execute at @a[team=REP] as @e[type=armor_stand,team=CIS,tag=E,distance=..5] unless entity @a[team=CIS,distance=..5] unless score @s postE matches 1 run scoreboard players remove @s postE 1
execute at @a[team=CIS] as @e[type=armor_stand,team=CIS,tag=E,distance=..5] unless entity @a[team=REP,distance=..5] unless score @s postE matches 200 run scoreboard players add @s postE 1
execute at @e[type=armor_stand,team=REP,tag=E] as @e[type=armor_stand,team=REP,tag=E] if score @s postE matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=CIS,tag=E] if score @s postE matches 1 run tellraw @a {"text":"The Republic has captured command post E.","color":"blue"}
execute as @e[type=armor_stand,team=CIS,tag=E] if score @s postE matches 1 run bossbar set battlefront:poste color blue
execute as @e[type=armor_stand,team=CIS,tag=E] if score @s postE matches 1 run waypoint modify @s color blue
execute as @e[type=armor_stand,team=CIS,tag=E] if score @s postE matches 1 run team join REP @s

bossbar set battlefront:poste players
execute at @e[type=armor_stand,tag=E] run bossbar set battlefront:poste players @a[distance=..5]
execute as @e[type=armor_stand,tag=E] run scoreboard players operation @s postReadable = @s postE
execute as @e[type=armor_stand,tag=E] store result bossbar battlefront:poste value run scoreboard players get @s postReadable
execute as @e[type=armor_stand,tag=E] if score @s postE matches 1 run scoreboard players set @s postE 200