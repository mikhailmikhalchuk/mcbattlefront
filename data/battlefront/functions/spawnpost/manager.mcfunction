tellraw @s ["",{"text":"To set the team of the command post, stand on top of it and run the command","color":"green"},{"text":" \"/team join <team> @e[type=armor_stand,limit=1,sort=nearest]\"","color":"green","clickEvent":{"action":"suggest_command","value":"/team join <team> @e[type=armor_stand,limit=1,sort=nearest]"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to enter command"}}}]
execute at @s run setblock ~ ~-1 ~ white_stained_glass
execute at @s run setblock ~ ~-2 ~ beacon
execute at @s run setblock ~ ~-3 ~ iron_block
execute at @s run setblock ~1 ~-3 ~-1 iron_block
execute at @s run setblock ~-1 ~-3 ~-1 iron_block
execute at @s run setblock ~ ~-3 ~-1 iron_block
execute at @s run setblock ~1 ~-3 ~ iron_block
execute at @s run setblock ~-1 ~-3 ~ iron_block
execute at @s run setblock ~1 ~-3 ~1 iron_block
execute at @s run setblock ~-1 ~-3 ~1 iron_block
execute at @s run setblock ~ ~-3 ~1 iron_block