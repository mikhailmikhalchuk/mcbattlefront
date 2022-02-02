execute as @a[scores={clickStick=1,damageTaken=..2499},nbt={SelectedItem:{tag:{Tags:["retribution"]}}}] run tellraw @s ["",{"text":"Cannot use item!\nNot enough damage taken (Need 2500, total ","color":"red"},{"score":{"name":"*","objective":"damageTaken"},"color":"red"},{"text":")","color":"red"}]
execute as @a[scores={clickStick=1,damageTaken=..2499},nbt={SelectedItem:{tag:{Tags:["retribution"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["retribution"]}}}] at @s unless block ~ ~-1 ~ air if entity @a[team=CIS,distance=..10] run scoreboard players set @s damageTaken 0
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["retribution"]}}}] at @s unless block ~ ~-1 ~ air if entity @a[team=CIS,distance=..10] run scoreboard players set @s retribDuration 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["retribution"]}}}] at @s unless block ~ ~-1 ~ air if entity @a[team=CIS,distance=..10] run effect give @s slowness 3 7 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["retribution"]}}}] at @s unless block ~ ~-1 ~ air if entity @a[team=CIS,distance=..10] run summon armor_stand ~ ~ ~ {Tags:["retribCircleGen"]}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["retribution"]}}}] at @s unless block ~ ~-1 ~ air if entity @a[team=CIS,distance=..10] run effect give @s resistance 3 3 true
execute as @a[scores={retribDuration=1},nbt={SelectedItem:{tag:{Tags:["retribution"]}}}] at @s unless block ~ ~-1 ~ air if entity @a[team=CIS,distance=..10] run effect give @a[team=CIS,distance=..10] instant_damage 1 0 true
execute as @a[scores={retribDuration=21},nbt={SelectedItem:{tag:{Tags:["retribution"]}}}] at @s unless block ~ ~-1 ~ air if entity @a[team=CIS,distance=..10] run effect give @a[team=CIS,distance=..10] instant_damage 1 0 true
execute as @a[scores={retribDuration=41},nbt={SelectedItem:{tag:{Tags:["retribution"]}}}] at @s unless block ~ ~-1 ~ air if entity @a[team=CIS,distance=..10] run effect give @a[team=CIS,distance=..10] instant_damage 1 0 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["retribution"]}}}] at @s unless block ~ ~-1 ~ air if entity @a[team=CIS,distance=..10] run effect give @a[team=CIS,distance=..10] slowness 3 7 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["retribution"]}}}] at @s unless block ~ ~-1 ~ air if entity @a[team=CIS,distance=..10] run scoreboard players set @s clickStick 0
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run particle cloud ^ ^ ^5
execute as @e[type=armor_stand,tag=retribCircleGen] at @s run particle cloud ^ ^ ^-5
execute as @a[scores={retribDuration=1..}] run scoreboard players add @s retribDuration 1
execute as @a[scores={retribDuration=60..}] run kill @e[type=armor_stand,tag=retribCircleGen]
execute as @a[scores={retribDuration=60..}] run scoreboard players set @s retribDuration 0