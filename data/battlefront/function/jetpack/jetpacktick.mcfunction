scoreboard players set @a hoverpackEquipped 0
scoreboard players set @a nearGround 0
effect give @a[scores={hoverpackFuel=0, hoverpackEquipped=1}] minecraft:slow_falling 1 1 true
execute as @a if items entity @s armor.chest *[custom_data={hoverpack:true}] run scoreboard players set @s hoverpackEquipped 1

#fuel ticker
execute as @a if items entity @s armor.chest *[custom_data={hoverpack:true}] run scoreboard players add @s hoverpackTick 1
execute as @a[scores={hoverpackEquipped=1,jump=1}] run scoreboard players set @s hoverpackTick 0
execute as @a[scores={hoverpackTick=20..,hoverpackFuel=..9},gamemode=!creative,nbt=!{OnGround:1b}] run scoreboard players add @s hoverpackFuel 1
execute as @a[scores={hoverpackTick=10..,hoverpackFuel=1..,fuelTick=1},nbt={OnGround:1b}] run scoreboard players remove @s hoverpackFuel 1
execute as @a[scores={hoverpackTick=100..,hoverpackFuel=1..,fuelTick=0},nbt={OnGround:1b}] run scoreboard players remove @s hoverpackFuel 1
execute as @a[scores={hoverpackEquipped=1,hoverpackTick=10..,fuelTick=1},nbt={OnGround:1b}] run scoreboard players set @s hoverpackTick 0
execute as @a[scores={hoverpackEquipped=1,hoverpackTick=20..},nbt=!{OnGround:1b}] run scoreboard players set @s hoverpackTick 0
execute as @a[scores={hoverpackEquipped=1,hoverpackTick=100..}] run scoreboard players set @s fuelTick 1
execute as @a[scores={hoverpackEquipped=1},nbt=!{OnGround:1b}] run scoreboard players set @s fuelTick 0
execute as @a[scores={hoverpackEquipped=1,hoverpackTick=100..}] run scoreboard players set @s hoverpackTick 0
execute as @a[scores={hoverpackEquipped=1}] run effect clear @s levitation
execute as @a[scores={hoverpackEquipped=1}] run attribute @s minecraft:gravity base reset

#jetpack out of fuel detector
execute as @a[scores={hoverpackEquipped=1,hoverpackFuel=10}] run scoreboard players set @s hoverpackDead 1
execute as @a[scores={hoverpackEquipped=1,hoverpackFuel=..9}] run scoreboard players set @s hoverpackDead 0

#hover tool use detection
execute as @a[scores={hoverpackEquipped=1,clickHover=1}] unless items entity @s weapon *[custom_data={hovertoggle:true}] run scoreboard players set @s clickHover 0
execute as @a[scores={hoverpackEquipped=1,clickHover=1}] if items entity @s weapon *[custom_data={hovertoggle:true}] run scoreboard players set @s clickHover 2
execute as @a[scores={hoverpackEquipped=1,clickHover=3}] run scoreboard players set @s stopMove 0
execute as @a[scores={hoverpackEquipped=1,clickHover=3}] run scoreboard players set @s clickHover 0
execute as @a[scores={hoverpackDead=1}] run scoreboard players set @s clickHover 0
execute as @a[scores={hoverpackDead=1}] run scoreboard players set @s stopMove 0
execute as @a[scores={hoverpackEquipped=0}] run scoreboard players set @s clickHover 0
execute as @a[scores={sneak=1},nbt=!{OnGround:1b}] run scoreboard players set @s stopMove 0
execute as @a[scores={sneak=1},nbt=!{OnGround:1b}] run scoreboard players set @s clickHover 0
execute as @a[scores={sneak=1},nbt=!{OnGround:1b}] run scoreboard players set @s stopMove 0

#fuel indicators
execute as @a[scores={hoverpackFuel=0,hoverpackEquipped=1}] run title @s actionbar {"text":"Fuel: [⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛]"}
execute as @a[scores={hoverpackFuel=1,hoverpackEquipped=1}] run title @s actionbar {"text":"Fuel: [-⬛⬛⬛⬛⬛⬛⬛⬛⬛]"}
execute as @a[scores={hoverpackFuel=2,hoverpackEquipped=1}] run title @s actionbar {"text":"Fuel: [--⬛⬛⬛⬛⬛⬛⬛⬛]"}
execute as @a[scores={hoverpackFuel=3,hoverpackEquipped=1}] run title @s actionbar {"text":"Fuel: [---⬛⬛⬛⬛⬛⬛⬛]"}
execute as @a[scores={hoverpackFuel=4,hoverpackEquipped=1}] run title @s actionbar {"text":"Fuel: [----⬛⬛⬛⬛⬛⬛]"}
execute as @a[scores={hoverpackFuel=5,hoverpackEquipped=1}] run title @s actionbar {"text":"Fuel: [-----⬛⬛⬛⬛⬛]"}
execute as @a[scores={hoverpackFuel=6,hoverpackEquipped=1}] run title @s actionbar {"text":"Fuel: [------⬛⬛⬛⬛]"}
execute as @a[scores={hoverpackFuel=7,hoverpackEquipped=1}] run title @s actionbar {"text":"Fuel: [-------⬛⬛⬛]"}
execute as @a[scores={hoverpackFuel=8,hoverpackEquipped=1}] run title @s actionbar {"text":"Fuel: [--------⬛⬛]"}
execute as @a[scores={hoverpackFuel=9,hoverpackEquipped=1}] run title @s actionbar {"text":"Fuel: [---------⬛]"}
execute as @a[scores={hoverpackFuel=10,hoverpackEquipped=1}] run title @s actionbar {"text":"Fuel: [----------]","color":"red"}

#out-of-fuel sound indicator
execute as @a[scores={hoverpackDead=1}] run scoreboard players add @s soundTick 1
execute at @a[scores={hoverpackDead=1,hoverpackEquipped=1,soundTick=3..}] run playsound minecraft:block.note_block.bit block @a ~ ~ ~ 0.5 1.6
execute as @a[scores={soundTick=3..}] run scoreboard players set @s soundTick 0

#jetpack up
execute as @a[scores={sneak=1,hoverpackDead=0,hoverpackEquipped=1,abilitiesBlocked=0},nbt=!{OnGround:1b}] run effect give @s minecraft:levitation 1 9 true

#detect if near ground
execute at @a[scores={hoverpackEquipped=1,nearGround=0}] unless block ~ ~-10 ~ minecraft:air as @a[scores={hoverpackEquipped=1,nearGround=0,sneak=0}] run scoreboard players set @s nearGround 1
execute as @a[scores={hoverpackEquipped=1,nearGround=1},nbt={OnGround:1b}] run scoreboard players set @s nearGround 0

execute as @a[scores={hoverpackEquipped=1,nearGround=1,clickHover=0}] at @a[scores={hoverpackEquipped=1,nearGround=1,clickHover=0}] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:levitation":{}}}} rotated ~ 0 positioned ^ ^ ^-0.3 run particle minecraft:poof ~ ~1 ~ 0 0 0 0 0

#hover
execute as @a[scores={hoverpackEquipped=1,hoverpackDead=0,clickHover=2}] run attribute @s minecraft:gravity base set 0
execute as @a[scores={hoverpackEquipped=1,hoverpackDead=0,clickHover=2,stopMove=0}] run tp @s @s
execute as @a[scores={hoverpackEquipped=1,hoverpackDead=0,clickHover=2,stopMove=0}] run scoreboard players set @s stopMove 1

#infinite slow-fall
execute as @a[scores={hoverpackEquipped=1,nearGround=1}] run effect give @s minecraft:slow_falling 1 150 true

#jetpack particle effect
execute as @a[scores={hoverpackDead=0,hoverpackEquipped=1}] at @a[scores={hoverpackDead=0,hoverpackEquipped=1}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:levitation":{}}}} rotated ~ 0 positioned ^ ^ ^-0.3 run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0 0
execute as @a[scores={hoverpackDead=0,hoverpackEquipped=1}] at @a[scores={hoverpackDead=0,hoverpackEquipped=1,clickHover=2}] rotated ~ 0 positioned ^ ^ ^-0.3 run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0 0

scoreboard players reset @a jump
scoreboard players reset @a sprint
scoreboard players set @a sneak 0
scoreboard players reset @a walk