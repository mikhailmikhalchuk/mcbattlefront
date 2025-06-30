execute as @a[scores={clickStick=1,doubCooldown=1..}] if items entity @s weapon *[custom_data~{doubleeffort:true}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"doubCooldown"},"color":"red"},{"text":" of 900 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,doubCooldown=1..}] if items entity @s weapon *[custom_data~{doubleeffort:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{doubleeffort:true}] at @s run effect give @a[distance=1..7,team=EMP] regeneration 5 3 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{doubleeffort:true}] at @s if entity @p[distance=1..7,team=EMP] run effect give @s regeneration 5 3 true
execute at @a[scores={clickStick=1},team=EMP] if items entity @s weapon *[custom_data~{doubleeffort:true}] run tellraw @a[distance=1..7,team=EMP] {"text":"Encouraged by nearby ISB Agent's Double Your Effort!","color":"yellow"}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{doubleeffort:true}] run scoreboard players set @s doubCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{doubleeffort:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={doubCooldown=1..}] run scoreboard players add @s doubCooldown 1
execute as @a[scores={doubCooldown=900..}] run scoreboard players set @s doubCooldown 0

#show cooldown on actionbar
execute as @a[scores={doubCooldown=1..,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{doubleeffort:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"doubCooldown"},"color":"red"},{"text":"/900","color":"red"}]
execute as @a[scores={doubCooldown=0,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{doubleeffort:true}] run title @s actionbar {"text":"Ready!","color":"green"}