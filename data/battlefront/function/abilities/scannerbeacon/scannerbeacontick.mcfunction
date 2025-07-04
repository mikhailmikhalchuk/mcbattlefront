execute as @e[type=area_effect_cloud] if predicate {condition:entity_properties, entity:this,predicate:{components:{custom_data:{scannerbeacon:true,longthrow:true}}}} at @s run summon armor_stand ~ ~ ~ {Tags:["scannerBeaconCircleGen"],Invisible:true,Invulnerable:true}
execute as @e[type=area_effect_cloud] if predicate {condition:entity_properties, entity:this,predicate:{components:{custom_data:{scannerbeacon:true,longthrow:true}}}} run kill @s
execute as @e[tag=scannerBeaconCircleGen] at @s positioned over motion_blocking unless entity @s[dy=320] run scoreboard players add @s scannerBeaconScanDuration 1
execute as @e[tag=scannerBeaconCircleGen] at @s positioned over motion_blocking if entity @s[dy=320] run scoreboard players add @s scannerBeaconStrikeDuration 1


execute as @e[scores={scannerBeaconStrikeDuration=100..}] run kill @s
execute as @e[scores={scannerBeaconScanDuration=200..}] run kill @s

#orbital strike (outside)
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^5
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-5
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^5
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-5
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^5
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-5
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^5
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-5
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^5
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-5
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^5
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconStrikeDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-5


execute as @e[scores={scannerBeaconStrikeDuration=20}] at @s run summon minecraft:creeper ^ ^30 ^4 {Tags:["scannerbeaconshot"],powered:false,Fuse:40,ignited:true,ExplosionRadius:2,DeathLootTable:"minecraft:empty",Silent:true,Invulnerable:true,CustomName:{"text":"Orbital Strike","color":"red"}}
execute as @e[scores={scannerBeaconStrikeDuration=40}] at @s run summon minecraft:creeper ^ ^30 ^2 {Tags:["scannerbeaconshot"],powered:false,Fuse:40,ignited:true,ExplosionRadius:2,DeathLootTable:"minecraft:empty",Silent:true,Invulnerable:true,CustomName:{"text":"Orbital Strike","color":"red"}}
execute as @e[scores={scannerBeaconStrikeDuration=50}] at @s run summon minecraft:creeper ^ ^30 ^3 {Tags:["scannerbeaconshot"],powered:false,Fuse:40,ignited:true,ExplosionRadius:2,DeathLootTable:"minecraft:empty",Silent:true,Invulnerable:true,CustomName:{"text":"Orbital Strike","color":"red"}}
execute as @e[scores={scannerBeaconStrikeDuration=70}] at @s run summon minecraft:creeper ^ ^30 ^3 {Tags:["scannerbeaconshot"],powered:false,Fuse:40,ignited:true,ExplosionRadius:2,DeathLootTable:"minecraft:empty",Silent:true,Invulnerable:true,CustomName:{"text":"Orbital Strike","color":"red"}}

execute as @e[tag=scannerbeaconshot] run attribute @s gravity base set 8
execute as @e[tag=scannerbeaconshot] run effect give @s invisibility infinite 0 true
execute as @e[tag=scannerbeaconshot] at @s run particle dust{color:[1,0,0],scale:2} ~ ~ ~
execute as @e[tag=scannerbeaconshot] at @s run particle dust{color:[1,0,0],scale:2} ~ ~-1 ~

execute as @e[type=area_effect_cloud] if predicate {condition:entity_properties, entity:this, predicate:{components:{potion_contents:{custom_effects:[{id:"minecraft:invisibility",duration:-1,show_icon:0b,show_particles:0b}]}}}} run kill @s

#scan (inside)
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^10
execute as @e[type=armor_stand,tag=scannerBeaconCircleGen,scores={scannerBeaconScanDuration=1..}] rotated 0 ~ at @s run particle dust{color:[0.322,1.000,1.000],scale:1} ^ ^ ^-10

execute as @e[scores={scannerBeaconScanDuration=20}] at @s run effect give @a[distance=..10,team=FO] glowing 1 0 true
execute as @e[scores={scannerBeaconScanDuration=20}] at @s run playsound minecraft:block.bell.resonate block @a[distance=..10] ~ ~ ~ 50 2
execute as @e[scores={scannerBeaconScanDuration=60}] at @s run effect give @a[distance=..10,team=FO] glowing 1 0 true
execute as @e[scores={scannerBeaconScanDuration=60}] at @s run playsound minecraft:block.bell.resonate block @a[distance=..10] ~ ~ ~ 50 2
execute as @e[scores={scannerBeaconScanDuration=100}] at @s run effect give @a[distance=..10,team=FO] glowing 1 0 true
execute as @e[scores={scannerBeaconScanDuration=100}] at @s run playsound minecraft:block.bell.resonate block @a[distance=..10] ~ ~ ~ 50 2
execute as @e[scores={scannerBeaconScanDuration=140}] at @s run effect give @a[distance=..10,team=FO] glowing 1 0 true
execute as @e[scores={scannerBeaconScanDuration=140}] at @s run playsound minecraft:block.bell.resonate block @a[distance=..10] ~ ~ ~ 50 2
execute as @e[scores={scannerBeaconScanDuration=180}] at @s run effect give @a[distance=..10,team=FO] glowing 1 0 true
execute as @e[scores={scannerBeaconScanDuration=180}] at @s run playsound minecraft:block.bell.resonate block @a[distance=..10] ~ ~ ~ 50 2

#cooldown
execute as @a[scores={scannerBeaconCooldown=500..}] run give @s minecraft:lingering_potion[potion_contents={potion:"minecraft:luck",custom_color:16777215},custom_name={"color":"red","italic":false,"text":"Scanner Beacon"},tooltip_display={hidden_components:["potion_contents"]},lore=[{"italic":false,"text":"Relays enemy locations within range"},{"italic":false,"text":"When outside, turns into an orbital strike"}],custom_data={scannerbeacon:true,longthrow:true}]
execute as @a[scores={scannerBeaconCooldown=500..}] run scoreboard players set @s scannerBeaconCooldown 0
execute as @a[tag=caphexspy,scores={scannerBeaconCooldown=0}] unless items entity @s container.* *[custom_data~{scannerbeacon:true,longthrow:true}] run scoreboard players set @s scannerBeaconCooldown 1
execute as @a[scores={scannerBeaconCooldown=1..}] run scoreboard players add @s scannerBeaconCooldown 1