execute as @a[scores={clickStick=1,bcomCooldown=1..}] if items entity @s weapon *[custom_data~{bcom:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{bcom:true}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..}] if items entity @s weapon *[custom_data~{bcom:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1},team=FO] if items entity @s weapon *[custom_data~{bcom:true}] at @s run effect give @a[distance=1..7,team=FO] absorption 15 2 true
execute as @a[scores={clickStick=1},team=RES] if items entity @s weapon *[custom_data~{bcom:true}] at @s run effect give @a[distance=1..7,team=RES] absorption 15 2 true
execute as @a[scores={clickStick=1},team=EMP] if items entity @s weapon *[custom_data~{bcom:true}] at @s run effect give @a[distance=1..7,team=EMP] absorption 15 2 true
execute as @a[scores={clickStick=1},team=REB] if items entity @s weapon *[custom_data~{bcom:true}] at @s run effect give @a[distance=1..7,team=REB] absorption 15 2 true
execute as @a[scores={clickStick=1},team=REP] if items entity @s weapon *[custom_data~{bcom:true}] at @s run effect give @a[distance=1..7,team=REP] absorption 15 2 true
execute as @a[scores={clickStick=1},team=CIS] if items entity @s weapon *[custom_data~{bcom:true}] at @s run effect give @a[distance=1..7,team=CIS] absorption 15 2 true
execute as @a[scores={clickStick=1},team=FO] if items entity @s weapon *[custom_data~{bcom:true}] at @s run effect give @a[distance=1..7,team=FO] strength 15 1 true
execute as @a[scores={clickStick=1},team=RES] if items entity @s weapon *[custom_data~{bcom:true}] at @s run effect give @a[distance=1..7,team=RES] strength 15 1 true
execute as @a[scores={clickStick=1},team=EMP] if items entity @s weapon *[custom_data~{bcom:true}] at @s run effect give @a[distance=1..7,team=EMP] strength 15 1 true
execute as @a[scores={clickStick=1},team=REB] if items entity @s weapon *[custom_data~{bcom:true}] at @s run effect give @a[distance=1..7,team=REB] strength 15 1 true
execute as @a[scores={clickStick=1},team=REP] if items entity @s weapon *[custom_data~{bcom:true}] at @s run effect give @a[distance=1..7,team=REP] strength 15 1 true
execute as @a[scores={clickStick=1},team=CIS] if items entity @s weapon *[custom_data~{bcom:true}] at @s run effect give @a[distance=1..7,team=CIS] strength 15 1 true
execute as @a[scores={clickStick=1},team=FO] if items entity @s weapon *[custom_data~{bcom:true}] at @s run tellraw @a[distance=1..7,team=FO] {"text":"Inspired by nearby officer's battle command!","color":"yellow"}
execute as @a[scores={clickStick=1},team=RES] if items entity @s weapon *[custom_data~{bcom:true}] at @s run tellraw @a[distance=1..7,team=RES] {"text":"Inspired by nearby officer's battle command!","color":"yellow"}
execute as @a[scores={clickStick=1},team=EMP] if items entity @s weapon *[custom_data~{bcom:true}] at @s run tellraw @a[distance=1..7,team=EMP] {"text":"Inspired by nearby officer's battle command!","color":"yellow"}
execute as @a[scores={clickStick=1},team=REB] if items entity @s weapon *[custom_data~{bcom:true}] at @s run tellraw @a[distance=1..7,team=REB] {"text":"Inspired by nearby officer's battle command!","color":"yellow"}
execute as @a[scores={clickStick=1},team=REP] if items entity @s weapon *[custom_data~{bcom:true}] at @s run tellraw @a[distance=1..7,team=REP] {"text":"Inspired by nearby officer's battle command!","color":"yellow"}
execute as @a[scores={clickStick=1},team=CIS] if items entity @s weapon *[custom_data~{bcom:true}] at @s run tellraw @a[distance=1..7,team=CIS] {"text":"Inspired by nearby officer's battle command!","color":"yellow"}
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{bcom:true}] run playsound entity.happy_ghast.equip master @a ~ ~50 ~ 999 1.5
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{bcom:true}] run scoreboard players set @s bcomCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{bcom:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={bcomCooldown=1..}] run scoreboard players add @s bcomCooldown 1
execute as @a[scores={bcomCooldown=1000..}] run scoreboard players set @s bcomCooldown 0

#show cooldown on actionbar
execute as @a[scores={bcomCooldown=1..}] if items entity @s weapon *[custom_data~{bcom:true}] run scoreboard players operation @s secondsHelper = @s bcomCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={bcomCooldown=1..}] if items entity @s weapon *[custom_data~{bcom:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/50 seconds","color":"red"}]
execute as @a[scores={bcomCooldown=0}] if items entity @s weapon *[custom_data~{bcom:true}] run title @s actionbar {"text":"Ready!","color":"green"}