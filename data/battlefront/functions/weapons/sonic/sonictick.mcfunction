execute at @e[type=area_effect_cloud,nbt={Color:15924479},nbt=!{Effects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:100,Id:15b,Amplifier:1b}]}] run summon minecraft:creeper ~ ~ ~ {powered:1,Fuse:0,ignited:1,ExplosionRadius:1,DeathLootTable:"minecraft:empty",Silent:1,Tags:["sonic"],CustomName:'{"text":"Sonic Imploder","color":"red"}'}
effect give @e[type=creeper,tag=sonic] blindness 5 1 true
kill @e[type=area_effect_cloud,nbt={Color:15924479}]
data modify entity @e[type=area_effect_cloud,limit=1,nbt={Effects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:100,Id:15b,Amplifier:1b}]}] Duration set value 25
data modify entity @e[type=area_effect_cloud,limit=1,nbt={Effects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:100,Id:15b,Amplifier:1b}]}] Color set value 15924479