execute unless entity @e[type=armor_stand,tag=facespec] run tellraw @s {"text":"Successfully set death facing location.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=facespec] run tellraw @s {"text":"Successfully removed previous death facing location and created a new one.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=facespec] run kill @e[type=armor_stand,tag=facespec]
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["facespec"]}