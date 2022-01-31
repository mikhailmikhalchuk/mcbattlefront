execute as @a[scores={clickStick=1,bfocCooldown=1..},nbt={SelectedItem:{tag:{Tags:["battlefocus"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"bfocCooldown"},"color":"red"},{"text":" of 1000 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,bfocCooldown=1..},nbt={SelectedItem:{tag:{Tags:["battlefocus"]}}}] run scoreboard players set @s clickStick 0
execute at @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["battlefocus"]}}}] run effect give @a[distance=1..7,team=REP] resistance 10 0 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["battlefocus"]}}}] run effect give @s resistance 10 0 true
execute at @a[scores={clickStick=1},team=REP,nbt={SelectedItem:{tag:{Tags:["battlefocus"]}}}] run tellraw @a[distance=1..7,team=REP] {"text":"Defended by nearby commando's Battle Focus!","color":"yellow"}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["battlefocus"]}}}] run scoreboard players set @s bfocCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["battlefocus"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={bfocCooldown=1..}] run scoreboard players add @s bfocCooldown 1
execute as @a[scores={bfocCooldown=1000..}] run scoreboard players set @s bfocCooldown 0