execute as @a[scores={clickStick=1,rushCharges=0}] if items entity @s weapon *[custom_data~{rush:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] unless predicate {condition:entity_properties,entity:this,predicate:{flags:{is_on_ground:true}}} run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{rush:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{rush:true}] run scoreboard players set @s clickStick 0

#this makes use of a neat trick that applies motion from explosions but not damage, since it is all in the same tick and damage is applied in the next
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] at @s run gamemode creative @s
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] at @s run tp @s ~ ~10000 ~
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^1 ^-3 summon minecraft:end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^1.5 ^-3 summon minecraft:end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] at @s anchored eyes rotated ~ 0 positioned ~ ~ ~ positioned ^ ^1.5 ^-1 summon minecraft:end_crystal run damage @s 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] at @s run tp @s ~ ~-10000 ~
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] at @s run gamemode adventure @s
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] at @s run playsound minecraft:entity.breeze.wind_burst master @s ~ ~50 ~ 999 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] run effect clear @s minecraft:jump_boost
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] run attribute @s minecraft:jump_strength base set 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] at @s run scoreboard players remove @s rushCharges 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] at @s run scoreboard players set @s rushJumpStopper 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{rush:true}] at @s run scoreboard players set @s clickStick 0
execute as @a[scores={rushCooldown=0..,rushCharges=..1}] run scoreboard players add @s rushCooldown 1
execute as @a[scores={rushJumpStopper=1..}] run scoreboard players add @s rushJumpStopper 1
execute as @a[scores={rushJumpStopper=15..}] run attribute @s minecraft:jump_strength base reset
execute as @a[scores={rushJumpStopper=15..}] run effect give @s minecraft:jump_boost infinite 2 true
execute as @a[scores={rushJumpStopper=15..}] run scoreboard players set @s rushJumpStopper 0
execute as @a[scores={rushCooldown=100..,rushCharges=..2}] run scoreboard players add @s rushCharges 1
execute as @a[scores={rushCooldown=100..,rushCharges=..2}] run scoreboard players set @s rushCooldown 0

#show cooldown on actionbar
execute as @a[scores={rushCooldown=1..}] if items entity @s weapon *[custom_data~{rush:true}] run scoreboard players operation @s secondsHelper = @s rushCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={rushCharges=..1}] if items entity @s weapon *[custom_data~{rush:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"rushCharges"},"color":"red"},{"text":"/2 charges | ","color":"red"},{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/5 seconds","color":"red"}]
execute as @a[scores={rushCharges=2}] if items entity @s weapon *[custom_data~{rush:true}] run title @s actionbar {"text":"Ready!","color":"green"}