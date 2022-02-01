execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["phasblaster"]}}}] at @s positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["direction"]}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["phasblaster"]}}}] at @s positioned ~ ~1 ~ run summon arrow ~ ~ ~ {Tags:["phasprojectile"]}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["phasblaster"]}}}] at @s run data modify entity @e[type=arrow,tag=phasprojectile,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["phasblaster"]}}}] at @s run data modify entity @e[type=arrow,tag=phasprojectile,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["phasblaster"]}}}] at @s run playsound minecraft:phasblast block @a ~ ~ ~ 0.4
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["phasblaster"]}}}] run scoreboard players set @s clickStick 0
tag @e[tag=phasprojectile] remove phasprojectile
kill @e[tag=direction]