execute as @a[scores={useTruncheon=3..,trunCooldown=0},nbt={SelectedItem:{tag:{Tags:["trunch"]}}}] run tellraw @s {"text":"Recharging truncheon...","color":"red"}
execute as @a[scores={useTruncheon=3..,trunCooldown=0},nbt={SelectedItem:{tag:{Tags:["trunch"]}}}] run scoreboard players set @s trunCooldown 1
execute as @a[scores={useTruncheon=3..,trunCooldown=1},nbt={SelectedItem:{tag:{Tags:["trunch"]}}}] run clear @s stone_sword
execute as @a[scores={useTruncheon=3..,trunCooldown=1}] run scoreboard players set @s useTruncheon 0
execute as @a[scores={trunCooldown=1..}] run scoreboard players add @s trunCooldown 1
execute as @a[scores={trunCooldown=80..,defeated=0}] run give @s minecraft:stone_sword{display:{Name:'{"text":"Truncheon","color":"red","italic":false}'},HideFlags:1,Unbreakable:1,Tags:["vibrosword"]} 1
execute as @a[scores={trunCooldown=80..}] run scoreboard players set @s trunCooldown 0