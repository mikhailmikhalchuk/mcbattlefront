#capture resistance command post
execute at @a[team=FO] as @e[type=armor_stand,team=RES,tag=A,distance=..5] unless entity @a[team=RES,distance=..5] unless score @s postA matches 1 run scoreboard players remove @s postA 1
execute at @a[team=RES] as @e[type=armor_stand,team=RES,tag=A,distance=..5] unless entity @a[team=FO,distance=..5] unless score @s postA matches 200 run scoreboard players add @s postA 1
execute at @e[type=armor_stand,team=FO,tag=A] as @e[type=armor_stand,team=FO,tag=A] if score @s postA matches 200 run setblock ~ ~-1 ~ minecraft:red_stained_glass replace
execute as @e[type=armor_stand,team=RES,tag=A] if score @s postA matches 1 run tellraw @a {"text":"The First Order has captured command post A.","color":"red"}
execute as @e[type=armor_stand,team=RES,tag=A] if score @s postA matches 1 run bossbar set battlefront:posta color red
execute as @e[type=armor_stand,team=RES,tag=A] if score @s postA matches 1 run team join FO @s

execute as @e[type=armor_stand,tag=A] if score @s postA matches 1 run scoreboard players set @s postA 200

#capture first order command post
execute at @a[team=RES] as @e[type=armor_stand,team=FO,tag=A,distance=..5] unless entity @a[team=FO,distance=..5] unless score @s postA matches 1 run scoreboard players remove @s postA 1
execute at @a[team=FO] as @e[type=armor_stand,team=FO,tag=A,distance=..5] unless entity @a[team=RES,distance=..5] unless score @s postA matches 200 run scoreboard players add @s postA 1
execute at @e[type=armor_stand,team=RES,tag=A] as @e[type=armor_stand,team=RES,tag=A] if score @s postA matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=FO,tag=A] if score @s postA matches 1 run tellraw @a {"text":"The Resistance has captured command post A.","color":"blue"}
execute as @e[type=armor_stand,team=FO,tag=A] if score @s postA matches 1 run bossbar set battlefront:posta color blue
execute as @e[type=armor_stand,team=FO,tag=A] if score @s postA matches 1 run team join RES @s

execute as @e[type=armor_stand,tag=A] if score @s postA matches 1 run scoreboard players set @s postA 200

#capture rebellion command post
execute at @a[team=EMP] as @e[type=armor_stand,team=REB,tag=A,distance=..5] unless entity @a[team=REB,distance=..5] unless score @s postA matches 1 run scoreboard players remove @s postA 1
execute at @a[team=REB] as @e[type=armor_stand,team=REB,tag=A,distance=..5] unless entity @a[team=EMP,distance=..5] unless score @s postA matches 200 run scoreboard players add @s postA 1
execute at @e[type=armor_stand,team=EMP,tag=A] as @e[type=armor_stand,team=EMP,tag=A] if score @s postA matches 200 run setblock ~ ~-1 ~ minecraft:red_stained_glass replace
execute as @e[type=armor_stand,team=REB,tag=A] if score @s postA matches 1 run tellraw @a {"text":"The Empire has captured command post A.","color":"red"}
execute as @e[type=armor_stand,team=REB,tag=A] if score @s postA matches 1 run bossbar set battlefront:posta color red
execute as @e[type=armor_stand,team=REB,tag=A] if score @s postA matches 1 run team join EMP @s

execute as @e[type=armor_stand,tag=A] if score @s postA matches 1 run scoreboard players set @s postA 200

#capture imperial command post
execute at @a[team=REB] as @e[type=armor_stand,team=EMP,tag=A,distance=..5] unless entity @a[team=EMP,distance=..5] unless score @s postA matches 1 run scoreboard players remove @s postA 1
execute at @a[team=EMP] as @e[type=armor_stand,team=EMP,tag=A,distance=..5] unless entity @a[team=REB,distance=..5] unless score @s postA matches 200 run scoreboard players add @s postA 1
execute at @e[type=armor_stand,team=REB,tag=A] as @e[type=armor_stand,team=REB,tag=A] if score @s postA matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=EMP,tag=A] if score @s postA matches 1 run tellraw @a {"text":"The Rebellion has captured command post A.","color":"blue"}
execute as @e[type=armor_stand,team=EMP,tag=A] if score @s postA matches 1 run bossbar set battlefront:posta color blue
execute as @e[type=armor_stand,team=EMP,tag=A] if score @s postA matches 1 run team join REB @s

#capture republic command post
execute at @a[team=CIS] as @e[type=armor_stand,team=REP,tag=A,distance=..5] unless entity @a[team=REP,distance=..5] unless score @s postA matches 1 run scoreboard players remove @s postA 1
execute at @a[team=REP] as @e[type=armor_stand,team=REP,tag=A,distance=..5] unless entity @a[team=CIS,distance=..5] unless score @s postA matches 200 run scoreboard players add @s postA 1
execute at @e[type=armor_stand,team=CIS,tag=A] as @e[type=armor_stand,team=CIS,tag=A] if score @s postA matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=REP,tag=A] if score @s postA matches 1 run tellraw @a {"text":"The Confederacy has captured command post A.","color":"red"}
execute as @e[type=armor_stand,team=REP,tag=A] if score @s postA matches 1 run bossbar set battlefront:posta color red
execute as @e[type=armor_stand,team=REP,tag=A] if score @s postA matches 1 run team join CIS @s

#capture separatist command post
execute at @a[team=REP] as @e[type=armor_stand,team=CIS,tag=A,distance=..5] unless entity @a[team=CIS,distance=..5] unless score @s postA matches 1 run scoreboard players remove @s postA 1
execute at @a[team=CIS] as @e[type=armor_stand,team=CIS,tag=A,distance=..5] unless entity @a[team=REP,distance=..5] unless score @s postA matches 200 run scoreboard players add @s postA 1
execute at @e[type=armor_stand,team=REP,tag=A] as @e[type=armor_stand,team=REP,tag=A] if score @s postA matches 200 run setblock ~ ~-1 ~ minecraft:blue_stained_glass replace
execute as @e[type=armor_stand,team=CIS,tag=A] if score @s postA matches 1 run tellraw @a {"text":"The Republic has captured command post A.","color":"blue"}
execute as @e[type=armor_stand,team=CIS,tag=A] if score @s postA matches 1 run bossbar set battlefront:posta color blue
execute as @e[type=armor_stand,team=CIS,tag=A] if score @s postA matches 1 run team join REP @s

bossbar set battlefront:posta players
execute at @e[type=armor_stand,tag=A] run bossbar set battlefront:posta players @a[distance=..5]
execute as @e[type=armor_stand,tag=A] run scoreboard players operation @s postReadable = @s postA
execute as @e[type=armor_stand,tag=A] store result bossbar battlefront:posta value run scoreboard players get @s postReadable
execute as @e[type=armor_stand,tag=A] if score @s postA matches 1 run scoreboard players set @s postA 200