execute at @e[type=area_effect_cloud,nbt={Potion:"minecraft:night_vision"}] run summon minecraft:creeper ~ ~ ~ {powered:1,Fuse:0,ignited:1,ExplosionRadius:1,DeathLootTable:"minecraft:empty",Silent:1,Tags:["sonic"]}
effect give @e[type=creeper,tag=sonic] blindness 5 1 true
execute at @e[type=area_effect_cloud,nbt={Potion:"minecraft:night_vision"}] run effect clear @a[distance=..8] minecraft:night_vision
kill @e[type=area_effect_cloud,nbt={Potion:"minecraft:night_vision"}]
data modify entity @e[type=area_effect_cloud,limit=1,nbt={Effects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:100,Id:15b,Amplifier:1b}]}] Duration set value 25