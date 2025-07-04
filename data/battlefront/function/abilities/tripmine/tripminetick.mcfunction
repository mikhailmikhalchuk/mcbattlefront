execute as @a[scores={clickStick=1,mineCooldown=1..}] if items entity @s weapon *[custom_data~{trip:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{trip:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{trip:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{trip:true}] at @s run summon creeper ~ ~ ~ {Tags:["tripmine"],Fuse:5,CustomName:{"text":"Trip Mine","color":"blue"},CustomNameVisible:0b,DeathLootTable:"minecraft:empty",Silent:true,Health:10}
execute as @a[scores={clickStick=1},team=FO] if items entity @s weapon *[custom_data~{trip:true}] at @s run team join FO @e[type=creeper,tag=tripmine,distance=..2]
execute as @a[scores={clickStick=1},team=RES] if items entity @s weapon *[custom_data~{trip:true}] at @s run team join RES @e[type=creeper,tag=tripmine,distance=..2]
execute as @a[scores={clickStick=1},team=REB] if items entity @s weapon *[custom_data~{trip:true}] at @s run team join REB @e[type=creeper,tag=tripmine,distance=..2]
execute as @a[scores={clickStick=1},team=EMP] if items entity @s weapon *[custom_data~{trip:true}] at @s run team join EMP @e[type=creeper,tag=tripmine,distance=..2]
execute as @a[scores={clickStick=1},team=REP] if items entity @s weapon *[custom_data~{trip:true}] at @s run team join REP @e[type=creeper,tag=tripmine,distance=..2]
execute as @a[scores={clickStick=1},team=CIS] if items entity @s weapon *[custom_data~{trip:true}] at @s run team join CIS @e[type=creeper,tag=tripmine,distance=..2]
execute as @e[type=creeper,tag=tripmine] run effect give @s invisibility infinite 0 true
execute as @e[type=creeper,tag=tripmine] run effect give @s slowness infinite 255 true
execute at @e[type=creeper,tag=tripmine] run particle minecraft:sneeze ~ ~ ~
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{trip:true}] run scoreboard players set @s mineCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{trip:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={mineCooldown=1..}] run scoreboard players add @s mineCooldown 1
execute as @a[scores={mineCooldown=600..}] run scoreboard players set @s mineCooldown 0
execute as @e[type=area_effect_cloud] if predicate {condition:entity_properties, entity:this, predicate:{components:{potion_contents:{custom_effects:[{id:"minecraft:slowness",duration:-1,show_icon:false,amplifier:-1b,show_particles:false},{id:"minecraft:invisibility",duration:-1,show_icon:false,show_particles:false}]}}}} run kill @s

#show cooldown on actionbar
execute as @a[scores={mineCooldown=1..}] if items entity @s weapon *[custom_data~{trip:true}] run scoreboard players operation @s secondsHelper = @s mineCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={mineCooldown=1..}] if items entity @s weapon *[custom_data~{trip:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/30 seconds","color":"red"}]
execute as @a[scores={mineCooldown=0}] if items entity @s weapon *[custom_data~{trip:true}] run title @s actionbar {"text":"Ready!","color":"green"}