execute unless entity @e[type=armor_stand,tag=E] run tellraw @s {"text":"Successfully created command post E.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=E] run tellraw @s {"text":"Successfully removed previous command post E and created a new one.","color":"green"}
function battlefront:spawnpost/manager
execute as @s if entity @e[type=armor_stand,tag=E] run kill @e[type=armor_stand,tag=E]
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["E"]}
execute at @s run scoreboard players set @e[type=armor_stand,tag=E] postE 200