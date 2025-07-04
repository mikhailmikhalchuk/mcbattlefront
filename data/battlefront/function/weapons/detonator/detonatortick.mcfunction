execute as @e[type=area_effect_cloud] if predicate {condition:entity_properties, entity:this,predicate:{components:{custom_data:{detonator:true,longthrow:true}}}} at @s run summon minecraft:creeper ~ ~ ~ {powered:true,Fuse:0,ignited:true,ExplosionRadius:2,DeathLootTable:"minecraft:empty",Silent:true,CustomName:{"text":"Thermal Detonator","color":"red"}}
execute as @e[type=area_effect_cloud] if predicate {condition:entity_properties, entity:this,predicate:{components:{custom_data:{detonator:true,longthrow:true}}}} run kill @s

#for leia's regen

execute as @a[scores={grenadeCooldown=260..},tag=leia] run give @s minecraft:lingering_potion[potion_contents={potion:"minecraft:luck",custom_color:9934743},custom_name={"color":"red","italic":false,"text":"Thermal Detonator"},custom_data={detonator:true,longthrow:true}] 3
execute as @a[scores={grenadeCooldown=260..},tag=leia] run scoreboard players set @s grenadeCooldown 0
execute as @a[scores={grenadeCooldown=700..},tag=assault] run give @s minecraft:lingering_potion[potion_contents={potion:"minecraft:luck",custom_color:9934743},tooltip_display={hidden_components:["potion_contents"]},custom_name={"color":"red","italic":false,"text":"Thermal Detonator"},custom_data={detonator:true,longthrow:true}] 1
execute as @a[scores={grenadeCooldown=700..},tag=assault] run scoreboard players set @s grenadeCooldown 0
execute as @a[tag=leia,scores={grenadeCooldown=0}] unless items entity @s container.* *[custom_data~{detonator:true}] run scoreboard players set @s grenadeCooldown 1
execute as @a[tag=assault,scores={grenadeCooldown=0}] unless items entity @s container.* *[custom_data~{detonator:true}] run scoreboard players set @s grenadeCooldown 1
execute as @a[scores={grenadeCooldown=1..}] run scoreboard players add @s grenadeCooldown 1