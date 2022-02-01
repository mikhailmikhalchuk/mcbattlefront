execute at @a[scores={sneak=1..},nbt={Motion:[0.0d,-0.0784000015258789d,0.0d],SelectedItem:{id:"minecraft:trident",Count:1b,tag:{Tags:["spin"]}}}] unless block ~ ~-0.5 ~ minecraft:air run fill ~ ~ ~ ~ ~ ~ minecraft:water[level=1] replace #battlefront:replaceable
execute as @a[scores={useSpin=1..,spinCooldown=0}] run tellraw @s {"text":"Recharging spin...","color":"red"}
execute as @a[scores={useSpin=1..,spinCooldown=0}] run clear @s trident
execute as @a[scores={useSpin=1..,spinCooldown=0}] run scoreboard players set @s spinCooldown 1
execute as @a[scores={useSpin=1..,spinCooldown=1}] run scoreboard players set @s useSpin 0
execute as @a[scores={spinCooldown=1..}] run scoreboard players add @s spinCooldown 1
execute as @a[scores={spinCooldown=200..,defeated=0}] run give @s minecraft:trident{display:{Name:'{"text":"Sheev Spin","color":"blue","italic":false}',Lore:['{"text":"Right-click while sneaking to","italic":false}','{"text":"dash into the enemy, dealing damage","italic":false}']},HideFlags:1,Enchantments:[{id:"minecraft:riptide",lvl:1}],Unbreakable:1,Tags:["spin"],AttributeModifiers:[{AttributeName:"generic.attack_damage", Name:"generic.attack_damage",Amount:0,Operation:0}]} 1
execute as @a[scores={spinCooldown=200..}] run scoreboard players set @s spinCooldown 0