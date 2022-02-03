execute as @a[scores={clickStick=1,mineCooldown=1..},nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"mineCooldown"},"color":"red"},{"text":" of 800 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,mineCooldown=1..},nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..},nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..},nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run scoreboard players set @s clickStick 0
execute at @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run summon creeper ~ ~ ~ {Tags:["tripmine"],Fuse:5,CustomName:'{"text":"Trip Mine","color":"blue"}',CustomNameVisible:0b,DeathLootTable:"minecraft:empty",Silent:1,Health:10}
execute at @a[scores={clickStick=1},team=FO,nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run team join FO @e[type=creeper,tag=tripmine,distance=..2]
execute at @a[scores={clickStick=1},team=RES,nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run team join RES @e[type=creeper,tag=tripmine,distance=..2]
execute at @a[scores={clickStick=1},team=REB,nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run team join REB @e[type=creeper,tag=tripmine,distance=..2]
execute at @a[scores={clickStick=1},team=EMP,nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run team join EMP @e[type=creeper,tag=tripmine,distance=..2]
execute at @a[scores={clickStick=1},team=REP,nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run team join REP @e[type=creeper,tag=tripmine,distance=..2]
execute at @a[scores={clickStick=1},team=CIS,nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run team join CIS @e[type=creeper,tag=tripmine,distance=..2]
execute as @e[type=creeper,tag=tripmine] run effect give @s invisibility 10000 1 true
execute as @e[type=creeper,tag=tripmine] run effect give @s slowness 10000 255 true
execute at @e[type=creeper,tag=tripmine] run particle minecraft:sneeze ~ ~ ~ 
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run scoreboard players set @s mineCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["trip"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={mineCooldown=1..}] run scoreboard players add @s mineCooldown 1
execute as @a[scores={mineCooldown=800..}] run scoreboard players set @s mineCooldown 0
kill @e[type=area_effect_cloud,nbt={Effects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:200000,Id:14b,Amplifier:1b},{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:200000,Id:2b,Amplifier:-1b}]}]