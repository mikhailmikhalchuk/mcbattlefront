execute as @a[scores={clickStick=1,seekCooldown=1..},nbt={SelectedItem:{tag:{Tags:["seektactic"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"seekCooldown"},"color":"red"},{"text":" of 600 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,seekCooldown=1..},nbt={SelectedItem:{tag:{Tags:["seektactic"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..},nbt={SelectedItem:{tag:{Tags:["seektactic"]}}}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..},nbt={SelectedItem:{tag:{Tags:["seektactic"]}}}] run scoreboard players set @s clickStick 0
execute at @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["seektactic"]}}}] run effect give @a[team=RES,limit=4,sort=nearest] glowing 10 0 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["seektactic"]}}}] run scoreboard players set @s seekCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["seektactic"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={seekCooldown=1..}] run scoreboard players add @s seekCooldown 1
execute as @a[scores={seekCooldown=600..}] run scoreboard players set @s seekCooldown 0