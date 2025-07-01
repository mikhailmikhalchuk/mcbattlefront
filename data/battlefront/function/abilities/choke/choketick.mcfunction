execute as @a[scores={clickStick=1,chokeCooldown=1..}] if items entity @s weapon *[custom_data~{choke:true}] run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{choke:true}] unless predicate {condition:entity_properties,entity:this,predicate:{flags:{is_on_ground:true}}} run scoreboard players set @s clickStick 0
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{choke:true}] at @s anchored eyes facing entity @p[team=REB,distance=..6] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run scoreboard players set @s chokeCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{choke:true}] at @s anchored eyes facing entity @p[team=REB,distance=..6] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run scoreboard players set @s chokeDuration 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{choke:true}] at @s anchored eyes facing entity @p[team=REB,distance=..6] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run playsound minecraft:block.chorus_flower.grow master @a ~ ~50 ~ 999 1.1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{choke:true}] at @s anchored eyes facing entity @p[team=REB,distance=..6] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run effect give @s slowness 3 1 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{choke:true}] at @s anchored eyes facing entity @p[team=REB,distance=..6] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run effect give @s resistance 3 0 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{choke:true}] at @s anchored eyes facing entity @p[team=REB,distance=..6] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run effect give @p[team=REB,distance=..10] wither 3 3 true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{choke:true}] at @s anchored eyes facing entity @p[team=REB,distance=..6] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run scoreboard players set @p[team=REB,distance=..10] abilitiesBlocked 60
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{choke:true}] at @s anchored eyes facing entity @p[team=REB,distance=..6] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run tag @p[team=REB,distance=..10] add choked
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{choke:true}] at @s anchored eyes facing entity @p[team=REB,distance=..6] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] rotated ~ 0 run scoreboard players set @s clickStick 0
execute as @a[scores={chokeDuration=1..}] at @s rotated ~ 0 if block ^ ^1 ^3 air if block ^ ^1 ^4 air run tp @p[team=REB,distance=..6] ^ ^1 ^3 facing ^ ^1 ^
execute as @a[scores={chokeDuration=1..}] at @s rotated ~ 0 unless block ^ ^1 ^3 air run tp @p[team=REB,distance=..6] ^ ^1 ^2 facing ^ ^1 ^
execute as @a[scores={chokeDuration=1..}] at @s rotated ~ 0 unless block ^ ^1 ^2 air run tp @p[team=REB,distance=..6] ^ ^1 ^1 facing ^ ^1 ^
execute as @a[scores={chokeDuration=1..}] at @s rotated ~ 0 unless block ^ ^1 ^1 air run tp @p[team=REB,distance=..6] ^ ^1 ^ facing ^ ^1 ^
execute as @a[scores={chokeCooldown=1..}] run scoreboard players add @s chokeCooldown 1
execute as @a[scores={chokeDuration=1..}] run scoreboard players add @s chokeDuration 1
execute as @a[scores={chokeDuration=1..}] run scoreboard players set @s unmoveable 1
execute as @a[scores={chokeDuration=60..}] at @s run tag @p[team=REB,distance=..10] remove choked
execute as @a[scores={chokeDuration=60..}] run scoreboard players set @s chokeDuration 0
execute as @a[scores={chokeDuration=60..}] run scoreboard players set @s unmoveable 0
execute as @a[scores={chokeCooldown=500..}] run scoreboard players set @s chokeCooldown 0

#show cooldown on actionbar
execute as @a[scores={chokeCooldown=1..}] if items entity @s weapon *[custom_data~{choke:true}] run scoreboard players operation @s secondsHelper = @s chokeCooldown
execute as @a run scoreboard players operation @s secondsHelper /= $const20 secondsHelper
execute as @a[scores={chokeCooldown=1..}] if items entity @s weapon *[custom_data~{choke:true}] run title @s actionbar ["",{"score":{"name":"*","objective":"secondsHelper"},"color":"red"},{"text":"/25 seconds","color":"red"}]
execute as @a[scores={chokeCooldown=0}] if items entity @s weapon *[custom_data~{choke:true}] run title @s actionbar {"text":"Ready!","color":"green"}