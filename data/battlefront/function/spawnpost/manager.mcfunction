tellraw @s ["",{"text":"To set the team of the command post, stand on top of it and run the command","color":"green"},{"text":" \"/team join <team> @e[type=armor_stand,limit=1,sort=nearest]\"","color":"green","click_event":{action:"suggest_command",command:"/team join team @e[type=armor_stand,limit=1,sort=nearest]"},"hover_event":{action:"show_text",value:{"text":"Click to enter command"}}}]
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