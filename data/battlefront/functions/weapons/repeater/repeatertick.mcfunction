execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["repeater"]}}}] at @s positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["direction"]}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["repeater"]}}}] at @s positioned ~ ~1 ~ run summon arrow ~ ~ ~ {Tags:["dcprojectile"]}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["repeater"]}}}] run data modify entity @e[type=arrow,tag=dcprojectile,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["repeater"]}}}] run scoreboard players set @s clickStick 0
execute as @e[tag=dcprojectile] run data modify entity @s damage set value 1
tag @e[tag=dcprojectile] remove dcprojectile
kill @e[tag=direction]