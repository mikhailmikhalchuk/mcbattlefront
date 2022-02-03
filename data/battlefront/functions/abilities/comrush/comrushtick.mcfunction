execute as @a[scores={clickStick=1,rushCooldown=1..},nbt={SelectedItem:{tag:{Tags:["comrush"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"rushCooldown"},"color":"red"},{"text":" of 750 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,rushCooldown=1..},nbt={SelectedItem:{tag:{Tags:["comrush"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..},nbt={SelectedItem:{tag:{Tags:["comrush"]}}}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..},nbt={SelectedItem:{tag:{Tags:["comrush"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["comrush"]}}}] run effect give @s speed 15 1 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["comrush"]}}}] run scoreboard players set @s rushCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["comrush"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={rushCooldown=1..}] run scoreboard players add @s rushCooldown 1
execute as @a[scores={rushCooldown=750..}] run scoreboard players set @s rushCooldown 0