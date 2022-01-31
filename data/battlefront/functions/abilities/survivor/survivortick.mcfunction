execute as @a[scores={clickStick=1,survCooldown=1..},nbt={SelectedItem:{tag:{Tags:["survivor"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"survCooldown"},"color":"red"},{"text":" of 1500 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,survCooldown=1..},nbt={SelectedItem:{tag:{Tags:["survivor"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["survivor"]}}}] run effect give @s absorption 45 4 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["survivor"]}}}] run scoreboard players set @s survCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["survivor"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={survCooldown=1..}] run scoreboard players add @s survCooldown 1
execute as @a[scores={survCooldown=1500..}] run scoreboard players set @s survCooldown 0