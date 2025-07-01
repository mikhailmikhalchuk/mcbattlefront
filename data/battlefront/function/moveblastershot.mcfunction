execute unless block ^ ^ ^1.5 air unless block ^ ^ ^1.5 #minecraft:replaceable unless block ^ ^ ^1.5 #minecraft:flowers unless block ^ ^ ^1.5 #minecraft:wool_carpets unless block ^ ^ ^1.5 #minecraft:wall_post_override unless block ^ ^ ^1.5 wall_torch unless block ^ ^ ^1.5 soul_wall_torch unless block ^ ^ ^1.5 redstone_torch unless block ^ ^ ^1.5 #minecraft:crops run kill @e[type=block_display,sort=nearest,limit=2]
execute unless entity @p[distance=..100] run kill @e[type=block_display,sort=nearest,limit=2]


#give varying amounts of damage based on laser

execute as @e[dx=0,type=player] at @s anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @a[distance=..0.7] unless score @s saberBlocked matches 1 if entity @e[type=block_display,tag=minigunbolt] run damage @s 1 player_attack
execute as @e[dx=0,type=player] at @s anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @a[distance=..0.7] unless score @s saberBlocked matches 1 if entity @e[type=block_display,tag=minigunbolt] run scoreboard players set @s skip 1
execute as @e[dx=0,type=player] at @s anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @a[distance=..0.7] unless score @s skip matches 1 if entity @e[type=block_display,tag=minigunbolt] run damage @s 1 player_attack

execute as @e[dx=0,type=player] if entity @e[type=block_display,tag=phasbolt] run damage @s 1 player_attack
execute as @e[dx=0,type=player] if entity @e[type=block_display,tag=stbolt] run damage @s 1 player_attack
#execute as @e[dx=0,type=player] if entity @e[type=block_display,tag=minigunbolt] run damage @s 1 player_attack
execute as @e[dx=0,type=player] if entity @e[type=block_display,tag=repeaterbolt] run damage @s 1 player_attack


execute if entity @e[dx=0,type=player] run kill @e[type=block_display,sort=nearest,limit=2]


tp ^ ^ ^0.5
scoreboard players set @a skip 0