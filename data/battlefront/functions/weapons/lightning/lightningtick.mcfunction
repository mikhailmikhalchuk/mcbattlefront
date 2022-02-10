execute as @a[scores={clickStick=1,elecCooldown=1..},nbt={SelectedItem:{tag:{Tags:["lightning"]}}}] run scoreboard players set @s clickStick 0
execute at @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["lightning"]}}}] run summon minecraft:lightning_bolt ^ ^ ^5 {Tags:["sheevel"]}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["lightning"]}}}] run data modify entity @e[type=lightning_bolt,tag=sheevel,limit=1] Owner set from entity @s UUID
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["lightning"]}}}] run scoreboard players set @s elecCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["lightning"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={elecCooldown=1..}] run scoreboard players add @s elecCooldown 1
execute as @a[scores={elecCooldown=30..}] run scoreboard players set @s elecCooldown 0