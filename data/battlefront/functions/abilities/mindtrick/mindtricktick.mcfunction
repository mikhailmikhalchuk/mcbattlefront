execute as @a[scores={clickStick=1,mindCooldown=1..},nbt={SelectedItem:{tag:{Tags:["mindtrick"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"mindCooldown"},"color":"red"},{"text":" of 1000 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,mindCooldown=1..},nbt={SelectedItem:{tag:{Tags:["mindtrick"]}}}] run scoreboard players set @s clickStick 0
execute at @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mindtrick"]}}}] unless block ~ ~-1 ~ air run effect give @a[distance=..5,team=FO] slowness 5 3 true
execute at @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mindtrick"]}}}] unless block ~ ~-1 ~ air run effect give @a[distance=..5,team=FO] nausea 5 0 true
execute at @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mindtrick"]}}}] unless block ~ ~-1 ~ air run tellraw @a[distance=..5,team=FO] {"text":"Hit by Rey's mind trick!","color":"red"}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mindtrick"]}}}] at @s unless block ~ ~-1 ~ air run tellraw @s ["",{"text":"Afflicted ","color":"green"},{"selector":"@a[distance=..5,team=FO]"},{"text":" with mind trick.","color":"green"}]
execute at @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mindtrick"]}}}] unless block ~ ~-1 ~ air run title @a[distance=..5,team=FO] title {"text":"iAMthesenatenotyet","obfuscated":true}
execute at @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mindtrick"]}}}] unless block ~ ~-1 ~ air run title @a[distance=..5,team=FO] subtitle {"text":"itstreasonthen","obfuscated":true}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mindtrick"]}}}] at @s unless block ~ ~-1 ~ air run scoreboard players set @p[team=FO,distance=..5] abilitiesBlocked 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mindtrick"]}}}] unless block ~ ~-1 ~ air run scoreboard players set @s mindCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["mindtrick"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={mindCooldown=1..}] run scoreboard players add @s mindCooldown 1
execute as @a[scores={mindCooldown=1000..}] run scoreboard players set @s mindCooldown 0