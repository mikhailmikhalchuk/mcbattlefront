execute unless entity @e[type=armor_stand,tag=EMPspawn] run tellraw @s {"text":"Successfully set Empire spawn point.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=EMPspawn] run tellraw @s {"text":"Successfully removed previous Empire spawn point and created a new one.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=EMPspawn] run kill @e[type=armor_stand,tag=EMPspawn]
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["EMPspawn"]}