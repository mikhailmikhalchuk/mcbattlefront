execute as @a[scores={clickStick=1,doubCooldown=1..},nbt={SelectedItem:{tag:{Tags:["doubleeffort"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"doubCooldown"},"color":"red"},{"text":" of 900 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,doubCooldown=1..},nbt={SelectedItem:{tag:{Tags:["doubleeffort"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["doubleeffort"]}}}] at @s run effect give @a[distance=1..7,team=EMP] regeneration 5 3 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["doubleeffort"]}}}] at @s if entity @p[distance=1..7,team=EMP] run effect give @s regeneration 5 3 true
execute at @a[scores={clickStick=1},team=EMP,nbt={SelectedItem:{tag:{Tags:["doubleeffort"]}}}] run tellraw @a[distance=1..7,team=EMP] {"text":"Encouraged by nearby ISB Agent's Double Your Effort!","color":"yellow"}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["doubleeffort"]}}}] run scoreboard players set @s doubCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["doubleeffort"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={doubCooldown=1..}] run scoreboard players add @s doubCooldown 1
execute as @a[scores={doubCooldown=900..}] run scoreboard players set @s doubCooldown 0