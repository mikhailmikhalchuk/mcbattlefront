execute as @a[scores={clickStick=1,restrCooldown=1..},nbt={SelectedItem:{tag:{Tags:["restrict"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"restrCooldown"},"color":"red"},{"text":" of 1000 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,restrCooldown=1..},nbt={SelectedItem:{tag:{Tags:["restrict"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["restrict"]}}}] at @s unless block ~ ~-1 ~ air run scoreboard players set @p[team=CIS,distance=..6] abilitiesBlocked 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["restrict"]}}}] at @s unless block ~ ~-1 ~ air run tellraw @p[team=CIS,distance=..6] {"text":"Hit by Obi-Wan Kenobi's restrictive mind trick!","color":"red"}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["restrict"]}}}] at @s unless block ~ ~-1 ~ air run tellraw @s ["",{"text":"Restricted the abilities of ","color":"green"},{"selector":"@a[distance=..6,team=CIS]"},{"text":".","color":"green"}]
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["restrict"]}}}] at @s unless block ~ ~-1 ~ air if entity @p[team=CIS,distance=..6] run scoreboard players set @s restrCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["restrict"]}}}] at @s unless block ~ ~-1 ~ air run scoreboard players set @p[team=CIS,distance=..6] abilitiesBlocked 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["restrict"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={restrCooldown=1..}] run scoreboard players add @s restrCooldown 1
execute as @a[scores={abilitiesBlocked=1..}] run scoreboard players add @s abilitiesBlocked 1
execute as @a[scores={abilitiesBlocked=100..}] run tellraw @s {"text":"Abilities are no longer restricted.","color":"green"}
execute as @a[scores={abilitiesBlocked=100..}] run scoreboard players set @s abilitiesBlocked 0
execute as @a[scores={restrCooldown=1000..}] run scoreboard players set @s restrCooldown 0