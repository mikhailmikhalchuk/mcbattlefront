execute as @e[type=area_effect_cloud] if predicate {condition:entity_properties, entity:this,predicate:{components:{custom_data:{detonite:true}}}} at @s run summon minecraft:creeper ~ ~ ~ {powered:false,Fuse:1,ignited:false,ExplosionRadius:3,DeathLootTable:"minecraft:empty",Silent:true,CustomName:{"text":"Detonite Charge","color":"red"},Tags:["detonitecharge"],NoAI:true}
execute as @e[type=area_effect_cloud] if predicate {condition:entity_properties, entity:this,predicate:{components:{custom_data:{detonite:true}}}} run give @a[tag=solo] minecraft:carrot_on_a_stick[item_name={"color":"blue","italic":false,"text":"Trigger Detonite"},tooltip_display={hidden_components:["unbreakable"]},lore=[{"italic":false,"text":"Explode detonite"}],unbreakable={},custom_data={detoniteexplode:true}] 1
execute as @e[type=area_effect_cloud] if predicate {condition:entity_properties, entity:this,predicate:{components:{custom_data:{detonite:true}}}} run kill @s

execute as @e[tag=detonitecharge] run effect give @s invisibility infinite 0 true

execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{detoniteexplode:true}] run data modify entity @e[tag=detonitecharge,limit=1] ignited set value true
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{detoniteexplode:true}] run scoreboard players set @s detoniteCooldown 1
execute as @a[scores={clickStick=1}] if items entity @s weapon *[custom_data~{detoniteexplode:true}] run clear @s minecraft:carrot_on_a_stick[custom_data={detoniteexplode:true}]

execute as @a[scores={detoniteCooldown=1..}] run scoreboard players add @s detoniteCooldown 1
execute as @a[scores={detoniteCooldown=360..}] run give @s minecraft:lingering_potion[potion_contents={potion:"minecraft:luck",custom_color:0},tooltip_display={hidden_components:["potion_contents"]},custom_name={"color":"red","italic":false,"text":"Detonite Charge"},lore=[{"italic":false,"text":"Throw to place a detonite charge on the ground"},{"italic":false,"text":"It can then be retriggered to explode"}],custom_data={detonite:true}]
execute as @a[scores={detoniteCooldown=360..}] run scoreboard players set @s detoniteCooldown 0

execute as @e[tag=detonitecharge] run scoreboard players add @s mineBlink 1
execute at @e[tag=detonitecharge] run particle dust{color:[0,0,0],scale:2} ~ ~ ~

execute at @e[tag=detonitecharge,scores={mineBlink=30..}] run particle dust{color:[1,0,0],scale:1} ~ ~0.4 ~
execute as @e[tag=detonitecharge,scores={mineBlink=30..}] at @s run playsound block.note_block.bit neutral @a[distance=..6] ~ ~ ~ 0.1 2
execute as @e[tag=detonitecharge,scores={mineBlink=30..}] at @s run scoreboard players set @s mineBlink 0