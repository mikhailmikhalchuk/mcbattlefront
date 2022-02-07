execute as @a[scores={clickStick=1,bcomCooldown=1..},nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run tellraw @s ["",{"text":"Cannot use item!\n","color":"red"},{"score":{"name":"*","objective":"bcomCooldown"},"color":"red"},{"text":" of 1000 ticks (1/20ths of a second) remaining.","color":"red"}]
execute as @a[scores={clickStick=1,bcomCooldown=1..},nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1,abilitiesBlocked=2..},nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run tellraw @s {"text":"Cannot use item! Abilities are restricted.","color":"red"}
execute as @a[scores={clickStick=1,abilitiesBlocked=2..},nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run scoreboard players set @s clickStick 0
execute at @a[scores={clickStick=1},team=FO,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run effect give @a[distance=1..7,team=FO] absorption 15 2 true
execute at @a[scores={clickStick=1},team=RES,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run effect give @a[distance=1..7,team=RES] absorption 15 2 true
execute at @a[scores={clickStick=1},team=EMP,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run effect give @a[distance=1..7,team=EMP] absorption 15 2 true
execute at @a[scores={clickStick=1},team=REB,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run effect give @a[distance=1..7,team=REB] absorption 15 2 true
execute at @a[scores={clickStick=1},team=REP,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run effect give @a[distance=1..7,team=REP] absorption 15 2 true
execute at @a[scores={clickStick=1},team=CIS,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run effect give @a[distance=1..7,team=CIS] absorption 15 2 true
execute at @a[scores={clickStick=1},team=FO,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run effect give @a[distance=1..7,team=FO] strength 15 1 true
execute at @a[scores={clickStick=1},team=RES,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run effect give @a[distance=1..7,team=RES] strength 15 1 true
execute at @a[scores={clickStick=1},team=EMP,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run effect give @a[distance=1..7,team=EMP] strength 15 1 true
execute at @a[scores={clickStick=1},team=REB,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run effect give @a[distance=1..7,team=REB] strength 15 1 true
execute at @a[scores={clickStick=1},team=REP,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run effect give @a[distance=1..7,team=REP] strength 15 1 true
execute at @a[scores={clickStick=1},team=CIS,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run effect give @a[distance=1..7,team=CIS] strength 15 1 true
execute at @a[scores={clickStick=1},team=FO,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run tellraw @a[distance=1..7,team=FO] {"text":"Inspired by nearby officer's battle command!","color":"yellow"}
execute at @a[scores={clickStick=1},team=RES,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run tellraw @a[distance=1..7,team=RES] {"text":"Inspired by nearby officer's battle command!","color":"yellow"}
execute at @a[scores={clickStick=1},team=EMP,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run tellraw @a[distance=1..7,team=EMP] {"text":"Inspired by nearby officer's battle command!","color":"yellow"}
execute at @a[scores={clickStick=1},team=REB,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run tellraw @a[distance=1..7,team=REB] {"text":"Inspired by nearby officer's battle command!","color":"yellow"}
execute at @a[scores={clickStick=1},team=REP,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run tellraw @a[distance=1..7,team=REP] {"text":"Inspired by nearby officer's battle command!","color":"yellow"}
execute at @a[scores={clickStick=1},team=CIS,nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run tellraw @a[distance=1..7,team=CIS] {"text":"Inspired by nearby officer's battle command!","color":"yellow"}
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run scoreboard players set @s bcomCooldown 1
execute as @a[scores={clickStick=1},nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run scoreboard players set @s clickStick 0
execute as @a[scores={bcomCooldown=1..}] run scoreboard players add @s bcomCooldown 1
execute as @a[scores={bcomCooldown=1000..}] run scoreboard players set @s bcomCooldown 0

#show cooldown on actionbar
execute as @a[scores={bcomCooldown=1..,show-actionbar-cooldown=1},nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run title @s actionbar ["",{"score":{"name":"*","objective":"bcomCooldown"},"color":"red"},{"text":"/1000","color":"red"}]
execute as @a[scores={bcomCooldown=0,show-actionbar-cooldown=1},nbt={SelectedItem:{tag:{Tags:["bcom"]}}}] run title @s actionbar {"text":"Ready!","color":"green"}