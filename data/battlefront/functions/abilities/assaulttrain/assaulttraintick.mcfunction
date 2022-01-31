execute as @a[scores={clickStick=1,tranCooldown=1..},nbt={SelectedItem:{tag:{Tags:["assaulttrain"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"tranCooldown"},"color":"red"},{"text":" of 800 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,tranCooldown=1..},nbt={SelectedItem:{tag:{Tags:["assaulttrain"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["assaulttrain"]}}}] run effect give @s speed 15 1 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["assaulttrain"]}}}] run effect give @s resistance 15 1 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["assaulttrain"]}}}] run scoreboard players set @s tranCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["assaulttrain"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={tranCooldown=1..}] run scoreboard players add @s tranCooldown 1
execute as @a[scores={tranCooldown=800..}] run scoreboard players set @s tranCooldown 0