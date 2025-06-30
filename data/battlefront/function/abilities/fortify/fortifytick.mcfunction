execute as @a[scores={clickStick=1,fortCooldown=1..}] if items entity @s weapon *[custom_data~{fortify:true}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"fortCooldown"},"color":"red"},{"text":" of 600 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,fortCooldown=1..}] if items entity @s weapon *[custom_data~{fortify:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{fortify:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{fortify:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{fortify:true}] run effect give @s absorption 45 3 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{fortify:true}] at @s run playsound minecraft:item.armor.equip_iron master @s ~ ~50 ~ 999 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{fortify:true}] run scoreboard players set @s fortCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{fortify:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={fortCooldown=1..}] run scoreboard players add @s fortCooldown 1
execute as @a[scores={fortCooldown=600..}] run scoreboard players set @s fortCooldown 0

#show cooldown on actionbar
execute as @a[scores={fortCooldown=1..,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{fortify:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"fortCooldown"},"color":"red"},{"text":"/600","color":"red"}]
execute as @a[scores={fortCooldown=0,show-actionbar-cooldown=1}] if items entity @s weapon *[custom_data~{fortify:true}] run title @s actionbar {"text":"Ready!","color":"green"}