execute as @a[scores={useStrike=1..,passCooldown=0}] run tellraw @s {"text":"Recharging strike...","color":"red"}
execute as @a[scores={useStrike=1..,passCooldown=0}] run clear @s diamond_axe
execute as @a[scores={useStrike=1..,passCooldown=0}] run scoreboard players set @s passCooldown 1
execute as @a[scores={useStrike=1..,passCooldown=1}] run scoreboard players set @s useStrike 0
execute as @a[scores={passCooldown=1..}] run scoreboard players add @s passCooldown 1
execute as @a[scores={passCooldown=250..,defeated=0}] run give @s minecraft:diamond_axe[item_name={"color":"red","italic":false,"text":"Passionate Strike"},lore=[{"italic":false,"text":"Unleashes a heavy strike, dealing high damage and breaking saber blocks"}],unbreakable={},enchantments={"minecraft:sharpness":2,"minecraft:efficiency":15},custom_data={pass:true}] 1
execute as @a[scores={passCooldown=250..}] run scoreboard players set @s passCooldown 0