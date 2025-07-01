execute as @a[scores={clickStick=1,fortCooldown=1..}] if items entity @s weapon *[custom_data~{fortify:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{fortify:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{fortify:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{fortify:true}] run effect give @s absorption 45 3 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{fortify:true}] at @s run playsound minecraft:item.armor.equip_iron master @s ~ ~50 ~ 999 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{fortify:true}] run scoreboard players set @s fortCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{fortify:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={fortCooldown=1..}] run scoreboard players add @s fortCooldown 1
execute as @a[scores={fortCooldown=500..}] run scoreboard players set @s fortCooldown 0

#show cooldown on actionbar
execute as @a[scores={fortCooldown=1..}] if items entity @s weapon *[custom_data~{fortify:true}] run scoreboard players operation @s secondsHelper = @s fortCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={fortCooldown=1..}] if items entity @s weapon *[custom_data~{fortify:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/25 seconds","color":"red"}]
execute as @a[scores={fortCooldown=0}] if items entity @s weapon *[custom_data~{fortify:true}] run title @s actionbar {"text":"Ready!","color":"green"}