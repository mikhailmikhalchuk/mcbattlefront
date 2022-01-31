execute as @a[scores={useTruncheon=3..,vibroCooldown=0},nbt={SelectedItem:{tag:{Tags:["vibrosword"]}}}] run tellraw @s {"text":"Recharging vibrosword...","color":"red"}
execute as @a[scores={useTruncheon=3..,vibroCooldown=0},nbt={SelectedItem:{tag:{Tags:["vibrosword"]}}}] run scoreboard players set @s vibroCooldown 1
execute as @a[scores={useTruncheon=3..,vibroCooldown=1},nbt={SelectedItem:{tag:{Tags:["vibrosword"]}}}] run clear @s stone_sword
execute as @a[scores={useTruncheon=3..,vibroCooldown=1}] run scoreboard players set @s useTruncheon 0
execute as @a[scores={vibroCooldown=1..}] run scoreboard players add @s vibroCooldown 1
execute as @a[scores={vibroCooldown=80..,defeated=0}] run give @s minecraft:stone_sword{display:{Name:'{"text":"Vibrosword","color":"red","italic":false}'},HideFlags:1,Unbreakable:1,Tags:["vibrosword"]} 1
execute as @a[scores={vibroCooldown=80..}] run scoreboard players set @s vibroCooldown 0