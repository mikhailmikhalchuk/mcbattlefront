execute unless entity @e[type=armor_stand,tag=C] run tellraw @s {"text":"Successfully created command post C.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=C] run tellraw @s {"text":"Successfully removed previous command post C and created a new one.","color":"green"}
function battlefront:spawnpost/manager
execute as @s if entity @e[type=armor_stand,tag=C] run kill @e[type=armor_stand,tag=C]
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["C"]}
execute at @s run scoreboard players set @e[type=armor_stand,tag=C] postC 200