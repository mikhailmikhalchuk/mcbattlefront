execute at @e[type=area_effect_cloud,nbt={Potion:"minecraft:luck"}] run summon minecraft:creeper ~ ~ ~ {powered:1,Fuse:0,ignited:1,ExplosionRadius:1,DeathLootTable:"minecraft:empty",Silent:1}
execute at @e[type=area_effect_cloud,nbt={Potion:"minecraft:luck"}] run effect clear @a[distance=..8] minecraft:luck
kill @e[type=area_effect_cloud,nbt={Potion:"minecraft:luck"}]