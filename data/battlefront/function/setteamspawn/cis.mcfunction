execute unless entity @e[type=armor_stand,tag=CISspawn] run tellraw @s {"text":"Successfully set Confederacy spawn point.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=CISspawn] run tellraw @s {"text":"Successfully removed previous Confederacy spawn point and created a new one.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=CISspawn] run kill @e[type=armor_stand,tag=CISspawn]
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["CISspawn"]}