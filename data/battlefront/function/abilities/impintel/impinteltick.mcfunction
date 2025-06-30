execute as @a[scores={clickStick=1,intelCooldown=1..}] if items entity @s weapon *[custom_data~{impintel:true}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"intelCooldown"},"color":"red"},{"text":" of 600 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,intelCooldown=1..}] if items entity @s weapon *[custom_data~{impintel:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{impintel:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{impintel:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{impintel:true}] at @s run effect give @a[team=REB,limit=4,sort=nearest] glowing 10 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{impintel:true}] run scoreboard players set @s intelCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{impintel:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={intelCooldown=1..}] run scoreboard players add @s intelCooldown 1
execute as @a[scores={intelCooldown=600..}] run scoreboard players set @s intelCooldown 0

#show cooldown on actionbar
execute as @a[scores={intelCooldown=1..,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{impintel:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"intelCooldown"},"color":"red"},{"text":"/600","color":"red"}]
execute as @a[scores={intelCooldown=0,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{impintel:true}] run title @s actionbar {"text":"Ready!","color":"green"}