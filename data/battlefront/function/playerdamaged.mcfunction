advancement revoke @s only battlefront:playerdamaged

#stop being frozen if frozen
execute if entity @s[tag=kyloFrozen] run kill @e[tag=freezetp,limit=1,sort=nearest]
execute if entity @s[tag=kyloFrozen] run attribute @s minecraft:gravity base reset
execute if entity @s[tag=kyloFrozen] run attribute @s minecraft:entity_interaction_range base reset
execute if entity @s[tag=kyloFrozen] run attribute @s minecraft:attack_speed base reset
execute if entity @s[tag=kyloFrozen,tag=hadBlock] run item replace entity @s weapon.offhand with minecraft:shield[item_name={"color":"red","italic":false,"text":"Saber Block"},tooltip_display={hidden_components:["enchantments","unbreakable"]},enchantments={"minecraft:feather_falling":1},unbreakable={}] 1
execute if entity @s[tag=kyloFrozen] run scoreboard players set @s abilitiesBlocked 0
execute if entity @s[tag=kyloFrozen] run tag @s remove kyloFrozen

#stop being choked if choked
execute if entity @s[tag=choked] run attribute @s minecraft:entity_interaction_range base reset
execute if entity @s[tag=choked] run attribute @s minecraft:attack_speed base reset
execute if entity @s[tag=choked] run effect clear @s minecraft:wither
execute if entity @s[tag=choked,tag=hadBlock] run item replace entity @s weapon.offhand with minecraft:shield[item_name={"color":"red","italic":false,"text":"Saber Block"},tooltip_display={hidden_components:["enchantments","unbreakable"]},enchantments={"minecraft:feather_falling":1},unbreakable={}] 1
execute if entity @s[tag=choked] run scoreboard players set @s abilitiesBlocked 0
execute if entity @s[tag=choked] run tag @s remove choked