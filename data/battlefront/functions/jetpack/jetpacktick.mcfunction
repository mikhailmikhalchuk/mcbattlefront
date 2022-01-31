scoreboard players set @a jetpacks-iron 0
scoreboard players set @a nearGround 0
effect give @a[scores={jetpacks-fuel=0, jetpacks-iron=1}] minecraft:slow_falling 1 1 true
scoreboard players set @a[nbt={Inventory:[{Slot:102b,tag:{display:{Name:'{"text":"NJP-900 Integrated Jetpack","color":"yellow","italic":false}'}}}]}] jetpacks-iron 1

#fuel ticker
execute as @a[scores={jetpacks-iron=1}] run scoreboard players add @s jetpacks-tick 1
execute as @a[scores={jetpacks-iron=1,jump=1}] run scoreboard players set @s jetpacks-tick 0
execute as @a[scores={jetpacks-tick=20..,jetpacks-fuel=..9},gamemode=!creative,nbt=!{OnGround:1b}] run scoreboard players add @s jetpacks-fuel 1
execute as @a[scores={jetpacks-tick=10..,jetpacks-fuel=1..,tick-fuel=1},nbt={OnGround:1b}] run scoreboard players remove @s jetpacks-fuel 1
execute as @a[scores={jetpacks-tick=100..,jetpacks-fuel=1..,tick-fuel=0},nbt={OnGround:1b}] run scoreboard players remove @s jetpacks-fuel 1
execute as @a[scores={jetpacks-iron=1,jetpacks-tick=10..,tick-fuel=1},nbt={OnGround:1b}] run scoreboard players set @s jetpacks-tick 0
execute as @a[scores={jetpacks-iron=1,jetpacks-tick=20..},nbt=!{OnGround:1b}] run scoreboard players set @s jetpacks-tick 0
execute as @a[scores={jetpacks-iron=1,jetpacks-tick=100..}] run scoreboard players set @s tick-fuel 1
execute as @a[scores={jetpacks-iron=1},nbt=!{OnGround:1b}] run scoreboard players set @s tick-fuel 0
execute as @a[scores={jetpacks-iron=1,jetpacks-tick=100..}] run scoreboard players set @s jetpacks-tick 0
execute as @a[scores={jetpacks-iron=1}] run effect clear @s minecraft:levitation

#jetpack out of fuel detector
execute as @a[scores={jetpacks-iron=1,jetpacks-fuel=10}] run scoreboard players set @s jetpacks-dead 1
execute as @a[scores={jetpacks-iron=1,jetpacks-fuel=..9}] run scoreboard players set @s jetpacks-dead 0

#hover tool use detection
execute as @a[scores={jetpacks-iron=1,clickHover=1},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Toggle Hover","color":"gray","italic":false}'}}}}] run scoreboard players set @s clickHover 0
execute as @a[scores={jetpacks-iron=1,clickHover=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Toggle Hover","color":"gray","italic":false}'}}}}] run scoreboard players set @s clickHover 2
execute as @a[scores={jetpacks-iron=1,clickHover=3}] run scoreboard players set @s clickHover 0
execute as @a[scores={jetpacks-dead=1}] run scoreboard players set @s clickHover 0
execute as @a[scores={jetpacks-iron=0}] run scoreboard players set @s clickHover 0
execute as @a[scores={sneak=1},nbt=!{OnGround:1b}] run scoreboard players set @s clickHover 0

#fuel indicators
execute as @a[scores={jetpacks-fuel=0,jetpacks-iron=1}] run title @s actionbar {"text":"Fuel: [⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛]"}
execute as @a[scores={jetpacks-fuel=1,jetpacks-iron=1}] run title @s actionbar {"text":"Fuel: [-⬛⬛⬛⬛⬛⬛⬛⬛⬛]"}
execute as @a[scores={jetpacks-fuel=2,jetpacks-iron=1}] run title @s actionbar {"text":"Fuel: [--⬛⬛⬛⬛⬛⬛⬛⬛]"}
execute as @a[scores={jetpacks-fuel=3,jetpacks-iron=1}] run title @s actionbar {"text":"Fuel: [---⬛⬛⬛⬛⬛⬛⬛]"}
execute as @a[scores={jetpacks-fuel=4,jetpacks-iron=1}] run title @s actionbar {"text":"Fuel: [----⬛⬛⬛⬛⬛⬛]"}
execute as @a[scores={jetpacks-fuel=5,jetpacks-iron=1}] run title @s actionbar {"text":"Fuel: [-----⬛⬛⬛⬛⬛]"}
execute as @a[scores={jetpacks-fuel=6,jetpacks-iron=1}] run title @s actionbar {"text":"Fuel: [------⬛⬛⬛⬛]"}
execute as @a[scores={jetpacks-fuel=7,jetpacks-iron=1}] run title @s actionbar {"text":"Fuel: [-------⬛⬛⬛]"}
execute as @a[scores={jetpacks-fuel=8,jetpacks-iron=1}] run title @s actionbar {"text":"Fuel: [--------⬛⬛]"}
execute as @a[scores={jetpacks-fuel=9,jetpacks-iron=1}] run title @s actionbar {"text":"Fuel: [---------⬛]"}
execute as @a[scores={jetpacks-fuel=10,jetpacks-iron=1}] run title @s actionbar {"text":"Fuel: [----------]","color":"red"}

#out-of-fuel sound indicator
execute as @a[scores={jetpacks-dead=1}] run scoreboard players add @s sound-tick 1
execute at @a[scores={jetpacks-dead=1,jetpacks-iron=1,sound-enabled=0,sound-tick=3..}] run playsound minecraft:block.note_block.bit block @a ~ ~ ~ 0.5 1.6
execute as @a[scores={sound-tick=3..}] run scoreboard players set @s sound-tick 0

#jetpack up
execute as @a[scores={sneak=1,jetpacks-dead=0,jetpacks-iron=1},nbt=!{OnGround:1b}] run effect give @s minecraft:levitation 1 9 true

#detect if near ground
execute at @a[scores={jetpacks-iron=1,nearGround=0}] unless block ~ ~-3 ~ minecraft:air as @a[scores={jetpacks-iron=1,nearGround=0}] run scoreboard players set @s nearGround 1
execute as @a[scores={jetpacks-iron=1,nearGround=1},nbt={OnGround:1b}] run scoreboard players set @s nearGround 0

execute at @a[scores={jetpacks-iron=1,nearGround=1,clickHover=0},nbt=!{ActiveEffects:[{Id:25b}]}] rotated ~ 0 positioned ^ ^ ^-0.3 run particle minecraft:poof ~ ~1 ~ 0 0 0 0 0

#hover
execute as @a[scores={jetpacks-iron=1,jetpacks-dead=0,clickHover=2}] run effect give @s minecraft:levitation 1 255 true

#infinite slow-fall
execute as @a[scores={jetpacks-iron=1,nearGround=1}] run effect give @s minecraft:slow_falling 1 0 true

#jetpack particle effect
execute at @a[nbt={ActiveEffects:[{Id:25b}]},scores={jetpacks-dead=0,jetpacks-iron=1}] rotated ~ 0 positioned ^ ^ ^-0.3 run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0 0

scoreboard players reset @a jump
scoreboard players reset @a sprint
scoreboard players reset @a sneak
scoreboard players reset @a walk