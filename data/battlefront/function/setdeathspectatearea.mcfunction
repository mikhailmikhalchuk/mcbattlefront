execute unless entity @e[type=armor_stand,tag=deathspec] run tellraw @s {"text":"Successfully set death spectator location.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=deathspec] run tellraw @s {"text":"Successfully removed previous death spectator location and created a new one.","color":"green"}
execute as @s if entity @e[type=armor_stand,tag=deathspec] run kill @e[type=armor_stand,tag=deathspec]
execute at @s run summon armor_stand ~ ~10000 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["deathspec"]}