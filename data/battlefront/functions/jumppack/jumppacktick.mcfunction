execute as @a[scores={clickStick=1,jumpCooldown=1..},nbt={SelectedItem:{tag:{Tags:["jumppack"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"jumpCooldown"},"color":"red"},{"text":" of 500 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,jumpCooldown=1..},nbt={SelectedItem:{tag:{Tags:["jumppack"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,retrDuration=1..},nbt={SelectedItem:{tag:{Tags:["jumppack"]}}}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,retrDuration=1..},nbt={SelectedItem:{tag:{Tags:["jumppack"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["jumppack"]}}}] run effect give @s levitation 1 10 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["jumppack"]}}}] run scoreboard players set @s jumpCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["jumppack"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={jumpCooldown=1..}] run scoreboard players add @s jumpCooldown 1
execute as @a[scores={jumpCooldown=500..}] run scoreboard players set @s jumpCooldown 0