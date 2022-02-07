execute as @a[scores={clickStick=1,insigCooldown=1..},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"insigCooldown"},"color":"red"},{"text":" of 500 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,insigCooldown=1..},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run scoreboard players set @s clickStick 0
execute at @a[scores={insigDuration=1..}] run effect give @a[team=FO,distance=..40] glowing 1 0 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~50 ~ 999 2
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run scoreboard players set @s insigCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run scoreboard players set @s insigDuration 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={insigCooldown=1..}] run scoreboard players add @s insigCooldown 1
execute as @a[scores={insigCooldown=500..}] run scoreboard players set @s insigCooldown 0
execute as @a[scores={insigDuration=1..}] run scoreboard players add @s insigDuration 1
execute as @a[scores={insigDuration=120..}] run tellraw @s {"text":"Insight ability expired.","color":"red"}
execute as @a[scores={insigDuration=120..}] run scoreboard players set @s insigDuration 0

#show cooldown on actionbar
execute as @a[scores={insigCooldown=1..,show-actionbar-cooldown=1},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run title @s actionbar ["",{"score":{"name":"*","objective":"insigCooldown"},"color":"red"},{"text":"/500","color":"red"}]
execute as @a[scores={insigCooldown=0,show-actionbar-cooldown=1},nbt={SelectedItem:{tag:{Tags:["insight"]}}}] run title @s actionbar {"text":"Ready!","color":"green"}