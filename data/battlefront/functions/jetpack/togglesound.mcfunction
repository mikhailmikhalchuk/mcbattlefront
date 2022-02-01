execute if score @s sound-enabled matches 0 run scoreboard players set @s sound-enabled 2
execute if score @s sound-enabled matches 1 run scoreboard players set @s sound-enabled 0
execute if score @s sound-enabled matches 2 run scoreboard players set @s sound-enabled 1
#scoreboard players set @s sound-enabled 1
execute if score @s sound-enabled matches 0 run tellraw @s {"text":"Disabled out-of-fuel sound indicator","color":"blue"}
execute if score @s sound-enabled matches 1 run tellraw @s {"text":"Enabled out-of-fuel sound indicator","color":"blue"}