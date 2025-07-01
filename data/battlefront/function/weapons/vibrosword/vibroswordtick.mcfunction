execute as @a[scores={useTruncheon=2,vibroCooldown=0}] if items entity @s weapon *[custom_data~{vibrosword:true}] unless items entity @s weapon *[enchantments={"minecraft:sharpness":2}] run enchant @s sharpness 2
execute as @a[scores={useTruncheon=3..,vibroCooldown=0}] if items entity @s weapon *[custom_data~{vibrosword:true}] run tellraw @s {"text":"Recharging vibrosword...","color":"red"}
execute as @a[scores={useTruncheon=3..,vibroCooldown=0}] if items entity @s weapon *[custom_data~{vibrosword:true}] run scoreboard players set @s vibroCooldown 1
execute as @a[scores={useTruncheon=3..,vibroCooldown=1}] if items entity @s weapon *[custom_data~{vibrosword:true}] run clear @s stone_sword
execute as @a[scores={useTruncheon=3..,vibroCooldown=1}] run scoreboard players set @s useTruncheon 0
execute as @a[scores={vibroCooldown=1..}] run scoreboard players add @s vibroCooldown 1
execute as @a[scores={vibroCooldown=80..,defeated=0}] run give @s minecraft:stone_sword[item_name={"color":"red","italic":false,"text":"Vibrosword"},lore=[{"italic":false,"text":"Gains bonus damage on third strike"}],unbreakable={},custom_data={vibrosword:true}]
execute as @a[scores={vibroCooldown=80..}] run scoreboard players set @s vibroCooldown 0