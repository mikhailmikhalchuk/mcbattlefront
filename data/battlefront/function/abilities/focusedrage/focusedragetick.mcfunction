execute as @a[scores={clickStick=1,focusedRageCooldown=1..}] if items entity @s weapon *[custom_data~{focusedrage:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{focusedrage:true}] unless predicate {condition:entity_properties,entity:this,predicate:{flags:{is_on_ground:true}}} run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{focusedrage:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{focusedrage:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{focusedrage:true}] at @s run attribute @s minecraft:attack_damage base set 1.25
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{focusedrage:true}] at @s run effect give @s absorption infinite 1 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{focusedrage:true}] at @s at @s run playsound minecraft:item.armor.equip_iron master @s ~ ~50 ~ 999 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{focusedrage:true}] at @s run scoreboard players set @s focusedRageCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{focusedrage:true}] at @s run scoreboard players set @s focusedRageDuration 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{focusedrage:true}] at @s run scoreboard players set @s clickStick 0
execute as @a[scores={focusedRageDuration=1..}] run scoreboard players add @s focusedRageDuration 1
execute as @a[scores={focusedRageDuration=200..}] run tellraw @s {"text":"Focused Rage ability expired.","color":"red"}
execute as @a[scores={focusedRageDuration=200..}] run attribute @s minecraft:attack_damage base reset
execute as @a[scores={focusedRageDuration=200..}] run scoreboard players set @s focusedRageDuration 0
execute as @a[scores={focusedRageCooldown=1..}] run scoreboard players add @s focusedRageCooldown 1
execute as @a[scores={focusedRageCooldown=300..}] run scoreboard players set @s focusedRageCooldown 0

#show cooldown on actionbar
execute as @a[scores={focusedRageCooldown=1..}] if items entity @s weapon *[custom_data~{focusedrage:true}] run scoreboard players operation @s secondsHelper = @s focusedRageCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={focusedRageCooldown=1..}] if items entity @s weapon *[custom_data~{focusedrage:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/15 seconds","color":"red"}]
execute as @a[scores={focusedRageCooldown=0}] if items entity @s weapon *[custom_data~{focusedrage:true}] run title @s actionbar {"text":"Ready!","color":"green"}