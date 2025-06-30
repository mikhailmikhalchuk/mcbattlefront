execute unless entity @e[type=armor_stand,tag=FOspawn] run tellraw @s {"text":"Successfully set First Order spawn point.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=FOspawn] run tellraw @s {"text":"Successfully removed previous First Order spawn point and created a new one.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=FOspawn] run kill @e[type=armor_stand,tag=FOspawn]
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["FOspawn"]}