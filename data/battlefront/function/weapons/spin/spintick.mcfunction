execute as @a if predicate {condition:"entity_properties", entity:this, predicate:{type:"player",flags:{is_sneaking:true,is_on_ground:true}}} if items entity @s weapon *[custom_data~{spin:true}] at @s unless block ~ ~-0.5 ~ minecraft:air run fill ~ ~ ~ ~ ~ ~ minecraft:water[level=1] replace #battlefront:replaceable
execute as @a[scores={useSpin=1..,spinCooldown=0}] run tellraw @s {"text":"Recharging spin...","color":"red"}
execute as @a[scores={useSpin=1..,spinCooldown=0}] run clear @s trident
execute as @a[scores={useSpin=1..,spinCooldown=0}] run scoreboard players set @s spinCooldown 1
execute as @a[scores={useSpin=1..,spinCooldown=1}] run scoreboard players set @s useSpin 0
execute as @a[scores={spinCooldown=1..}] run scoreboard players add @s spinCooldown 1
execute as @a[scores={spinCooldown=200..,defeated=0}] run give @s minecraft:trident[item_name={"color":"blue","italic":false,"text":"Sheev Spin"},lore=[{"italic":false,"text":"Right-click while sneaking to"},{"italic":false,"text":"dash into the enemy, dealing damage"}],unbreakable={},custom_data={spin:true},enchantments={"minecraft:riptide":1}] 1
execute as @a[scores={spinCooldown=200..}] run scoreboard players set @s spinCooldown 0