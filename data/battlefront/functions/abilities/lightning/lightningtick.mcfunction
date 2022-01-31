execute as @a[scores={clickStick=1,elecCooldown=1..},nbt={SelectedItem:{tag:{Tags:["lightning"]}}}] run scoreboard players set @s clickStick 0
execute at @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["lightning"]}}}] run summon minecraft:lightning_bolt ^ ^ ^5
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["lightning"]}}}] run scoreboard players set @s elecCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["lightning"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={elecCooldown=1..}] run scoreboard players add @s elecCooldown 1
execute as @a[scores={elecCooldown=30..}] run scoreboard players set @s elecCooldown 0