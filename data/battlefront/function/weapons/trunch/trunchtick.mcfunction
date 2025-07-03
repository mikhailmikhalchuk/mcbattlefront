execute as @a[scores={useTruncheon=3..,trunCooldown=0}] if items entity @s weapon *[custom_data~{trunch:true}] run tellraw @s {"text":"Recharging truncheon...","color":"red"}
execute as @a[scores={useTruncheon=3..,trunCooldown=0}] if items entity @s weapon *[custom_data~{trunch:true}] run scoreboard players set @s trunCooldown 1
execute as @a[scores={useTruncheon=3..,trunCooldown=1}] if items entity @s weapon *[custom_data~{trunch:true}] run clear @s stone_sword
execute as @a[scores={useTruncheon=3..,trunCooldown=1}] run scoreboard players set @s useTruncheon 0
execute as @a[scores={trunCooldown=1..}] run scoreboard players add @s trunCooldown 1
execute as @a[scores={trunCooldown=80..,defeated=0}] run give @s minecraft:stone_sword[item_name={"color":"red","italic":false,"text":"Truncheon"},tooltip_display={hidden_components:["unbreakable","attribute_modifiers"]},unbreakable={},custom_data={trunch:true}]
execute as @a[scores={trunCooldown=80..}] run scoreboard players set @s trunCooldown 0