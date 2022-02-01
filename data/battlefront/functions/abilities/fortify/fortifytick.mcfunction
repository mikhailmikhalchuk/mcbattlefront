execute as @a[scores={clickStick=1,fortCooldown=1..},nbt={SelectedItem:{tag:{Tags:["fortify"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"fortCooldown"},"color":"red"},{"text":" of 750 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,fortCooldown=1..},nbt={SelectedItem:{tag:{Tags:["fortify"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=1..},nbt={SelectedItem:{tag:{Tags:["fortify"]}}}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=1..},nbt={SelectedItem:{tag:{Tags:["fortify"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["fortify"]}}}] run effect give @s absorption 45 3 true
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["fortify"]}}}] at @s run playsound minecraft:item.armor.equip_iron master @s ~ ~50 ~ 999 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["fortify"]}}}] run scoreboard players set @s fortCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["fortify"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={fortCooldown=1..}] run scoreboard players add @s fortCooldown 1
execute as @a[scores={fortCooldown=750..}] run scoreboard players set @s fortCooldown 0