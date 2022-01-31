execute as @a[scores={clickStick=1,retrCooldown=1..},nbt={SelectedItem:{tag:{Tags:["retr"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"retrCooldown"},"color":"red"},{"text":" of 1000 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,retrCooldown=1..},nbt={SelectedItem:{tag:{Tags:["retr"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["retr"]}}}] at @s unless block ~ ~-1 ~ air run scoreboard players set @p[team=CIS,distance=..6] retrDuration 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["retr"]}}}] at @s unless block ~ ~-1 ~ air run tellraw @p[team=CIS,distance=..6] {"text":"Hit by Obi-Wan Kenobi's restrictive mind trick!","color":"red"}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["retr"]}}}] at @s unless block ~ ~-1 ~ air if entity @p[team=CIS,distance=..6] run scoreboard players set @s retrCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["retr"]}}}] at @s unless block ~ ~-1 ~ air run scoreboard players set @p[team=CIS,distance=..6] retrDuration 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["retr"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={retrCooldown=1..}] run scoreboard players add @s retrCooldown 1
execute as @a[scores={retrDuration=1..}] run scoreboard players add @s retrDuration 1
execute as @a[scores={retrDuration=100..}] run tellraw @s {"text":"Abilities are no longer restricted.","color":"green"}
execute as @a[scores={retrDuration=100..}] run scoreboard players set @s retrDuration 0
execute as @a[scores={retrCooldown=1000..}] run scoreboard players set @s retrCooldown 0