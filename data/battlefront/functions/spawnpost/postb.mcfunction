execute unless entity @e[type=armor_stand,tag=B] run tellraw @s {"text":"Successfully created command post B.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=B] run tellraw @s {"text":"Successfully removed previous command post B and created a new one.","color":"green"}
function battlefront:spawnpost/manager
execute as @s if entity @e[type=armor_stand,tag=B] run kill @e[type=armor_stand,tag=B]
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["B"]}
execute at @s run scoreboard players set @e[type=armor_stand,tag=B] postB 200