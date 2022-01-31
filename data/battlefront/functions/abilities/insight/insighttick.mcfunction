execute as @a[scores={clickStick=1,insigCooldown=1..},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"insigCooldown"},"color":"red"},{"text":" of 1500 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,insigCooldown=1..},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run scoreboard players set @s clickStick 0
execute at @a[scores={insigDuration=1..}] run effect give @a[team=FO,distance=..40] glowing 1 0 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run scoreboard players set @s insigCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run scoreboard players set @s insigDuration 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={insigCooldown=1..}] run scoreboard players add @s insigCooldown 1
execute as @a[scores={insigCooldown=1500..}] run scoreboard players set @s insigCooldown 0
execute as @a[scores={insigDuration=1..}] run scoreboard players add @s insigDuration 1
execute as @a[scores={insigDuration=120..}] run tellraw @s {"text":"Insight ability expired.","color":"red"}
execute as @a[scores={insigDuration=120..}] run scoreboard players set @s insigDuration 0