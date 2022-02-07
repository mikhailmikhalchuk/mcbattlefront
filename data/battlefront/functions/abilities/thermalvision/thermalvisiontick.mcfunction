execute as @a[scores={clickStick=1,thermCooldown=1..},nbt={SelectedItem:{tag:{Tags:["thermvision"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"thermCooldown"},"color":"red"},{"text":" of 750 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,thermCooldown=1..},nbt={SelectedItem:{tag:{Tags:["thermvision"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..},nbt={SelectedItem:{tag:{Tags:["thermvision"]}}}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..},nbt={SelectedItem:{tag:{Tags:["thermvision"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["thermvision"]}}}] run scoreboard players set @s thermCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["thermvision"]}}}] run scoreboard players set @s thermGlowing 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["thermvision"]}}}] run scoreboard players set @s clickStick 0
execute at @a[scores={thermGlowing=20}] run effect give @a[team=REP,distance=..25] glowing 1 0 true
execute at @a[scores={thermGlowing=60}] run effect give @a[team=REP,distance=..25] glowing 1 0 true
execute at @a[scores={thermGlowing=100}] run effect give @a[team=REP,distance=..25] glowing 1 0 true
execute at @a[scores={thermGlowing=140}] run effect give @a[team=REP,distance=..25] glowing 1 0 true
execute at @a[scores={thermGlowing=200}] run effect give @a[team=REP,distance=..25] glowing 1 0 true
execute as @a[scores={thermCooldown=1..}] run scoreboard players add @s thermCooldown 1
execute as @a[scores={thermGlowing=1..}] run scoreboard players add @s thermGlowing 1
execute as @a[scores={thermGlowing=201..}] run scoreboard players set @s thermGlowing 0
execute as @a[scores={thermCooldown=750..}] run scoreboard players set @s thermCooldown 0

#show cooldown on actionbar
execute as @a[scores={thermCooldown=1..,show-actionbar-cooldown=1},nbt={SelectedItem:{tag:{Tags:["thermvision"]}}}] run title @s actionbar ["",{"score":{"name":"*","objective":"thermCooldown"},"color":"red"},{"text":"/750","color":"red"}]
execute as @a[scores={thermCooldown=0,show-actionbar-cooldown=1},nbt={SelectedItem:{tag:{Tags:["thermvision"]}}}] run title @s actionbar {"text":"Ready!","color":"green"}