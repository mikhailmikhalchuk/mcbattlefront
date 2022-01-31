execute as @a[scores={clickStick=1,helmCooldown=1..},nbt={SelectedItem:{tag:{Tags:["helmscan"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"helmCooldown"},"color":"red"},{"text":" of 750 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,helmCooldown=1..},nbt={SelectedItem:{tag:{Tags:["helmscan"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["helmscan"]}}}] run scoreboard players set @s helmCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["helmscan"]}}}] run scoreboard players set @s helmGlowing 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["helmscan"]}}}] run scoreboard players set @s clickStick 0
execute at @a[scores={helmGlowing=20}] run effect give @a[team=CIS,distance=..25] glowing 1 0 true
execute at @a[scores={helmGlowing=60}] run effect give @a[team=CIS,distance=..25] glowing 1 0 true
execute at @a[scores={helmGlowing=100}] run effect give @a[team=CIS,distance=..25] glowing 1 0 true
execute at @a[scores={helmGlowing=140}] run effect give @a[team=CIS,distance=..25] glowing 1 0 true
execute at @a[scores={helmGlowing=200}] run effect give @a[team=CIS,distance=..25] glowing 1 0 true
execute as @a[scores={helmCooldown=1..}] run scoreboard players add @s helmCooldown 1
execute as @a[scores={helmGlowing=1..}] run scoreboard players add @s helmGlowing 1
execute as @a[scores={helmGlowing=201..}] run scoreboard players set @s helmGlowing 0
execute as @a[scores={helmCooldown=750..}] run scoreboard players set @s helmCooldown 0