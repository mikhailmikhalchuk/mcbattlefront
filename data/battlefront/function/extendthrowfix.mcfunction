execute as @e[type=lingering_potion,tag=fixed] store result entity @s Air short -1 run data get entity @s Air

tag @e[type=lingering_potion,tag=fixed] remove fixed