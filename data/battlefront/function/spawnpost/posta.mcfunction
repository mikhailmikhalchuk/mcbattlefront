execute unless entity @e[type=armor_stand,tag=A] run tellraw @s {"text":"Successfully created command post A.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=A] run tellraw @s {"text":"Successfully removed previous command post A and created a new one.","color":"green"}
function battlefront:spawnpost/manager
execute as @s if entity @e[type=armor_stand,tag=A] run kill @e[type=armor_stand,tag=A]
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["A"],attributes:[{id:"minecraft:waypoint_transmit_range",base:500}],CustomName:"Command Post A"}
waypoint modify @e[type=armor_stand,tag=A,limit=1] color white
execute at @s run scoreboard players set @e[type=armor_stand,tag=A] postA 200