execute as @a[scores={clickStick=1,helmCooldown=1..}] if items entity @s weapon *[custom_data~{helmscan:true}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"helmCooldown"},"color":"red"},{"text":" of 600 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,helmCooldown=1..}] if items entity @s weapon *[custom_data~{helmscan:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{helmscan:true}] run scoreboard players set @s helmCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{helmscan:true}] run scoreboard players set @s helmGlowing 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{helmscan:true}] run scoreboard players set @s clickStick 0
execute at @a[scores={helmGlowing=20}] run effect give @a[team=CIS,distance=..25] glowing 1 0 true
execute at @a[scores={helmGlowing=60}] run effect give @a[team=CIS,distance=..25] glowing 1 0 true
execute at @a[scores={helmGlowing=100}] run effect give @a[team=CIS,distance=..25] glowing 1 0 true
execute at @a[scores={helmGlowing=140}] run effect give @a[team=CIS,distance=..25] glowing 1 0 true
execute at @a[scores={helmGlowing=180}] run effect give @a[team=CIS,distance=..25] glowing 1 0 true
execute as @a[scores={helmGlowing=20}] at @s run playsound minecraft:block.bell.resonate master @s ~ ~50 ~ 999 2
execute as @a[scores={helmGlowing=60}] at @s run playsound minecraft:block.bell.resonate master @s ~ ~50 ~ 999 2
execute as @a[scores={helmGlowing=100}] at @s run playsound minecraft:block.bell.resonate master @s ~ ~50 ~ 999 2
execute as @a[scores={helmGlowing=140}] at @s run playsound minecraft:block.bell.resonate master @s ~ ~50 ~ 999 2
execute as @a[scores={helmGlowing=180}] at @s run playsound minecraft:block.bell.resonate master @s ~ ~50 ~ 999 2
execute as @a[scores={helmCooldown=1..}] run scoreboard players add @s helmCooldown 1
execute as @a[scores={helmGlowing=1..}] run scoreboard players add @s helmGlowing 1
execute as @a[scores={helmGlowing=181..}] run scoreboard players set @s helmGlowing 0
execute as @a[scores={helmCooldown=600..}] run scoreboard players set @s helmCooldown 0

#show cooldown on actionbar
execute as @a[scores={helmCooldown=1..,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{helmscan:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"helmCooldown"},"color":"red"},{"text":"/600","color":"red"}]
execute as @a[scores={helmCooldown=0,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{helmscan:true}] run title @s actionbar {"text":"Ready!","color":"green"}