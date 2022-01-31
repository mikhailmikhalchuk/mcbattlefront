execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mini"]}}}] at @s positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["direction"]}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mini"]}}}] at @s positioned ~ ~1 ~ run summon arrow ~ ~ ~ {Tags:["mgprojectile"]}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mini"]}}}] run data modify entity @e[type=arrow,tag=mgprojectile,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mini"]}}}] run scoreboard players set @s clickStick 0
execute as @e[tag=mgprojectile] run data modify entity @s damage set value 0.5
tag @e[tag=mgprojectile] remove mgprojectile
kill @e[tag=direction]