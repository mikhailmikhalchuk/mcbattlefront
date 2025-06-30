execute as @a[scores={usePBaton=4..,pbatCooldown=0}] run tellraw @s {"text":"Recharging baton...","color":"red"}
execute as @a[scores={usePBaton=4..,pbatCooldown=0}] run clear @s iron_sword
execute as @a[scores={usePBaton=4..,pbatCooldown=0}] run scoreboard players set @s pbatCooldown 1
execute as @a[scores={usePBaton=4..,pbatCooldown=1}] run scoreboard players set @s usePBaton 0
execute as @a[scores={pbatCooldown=1..}] run scoreboard players add @s pbatCooldown 1
execute as @a[scores={pbatCooldown=100..,defeated=0}] run give @s minecraft:iron_sword[item_name={"color":"red","italic":false,"text":"Phasma's baton"},unbreakable={}] 1
execute as @a[scores={pbatCooldown=100..}] run scoreboard players set @s pbatCooldown 0