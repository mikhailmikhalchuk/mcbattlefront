#run nested functions

#weapons
function battlefront:weapons/grenade/grenadetick
function battlefront:weapons/pblaster/pblastertick
function battlefront:weapons/sonic/sonictick
function battlefront:weapons/minigun/miniguntick
function battlefront:weapons/stblaster/stblastertick
function battlefront:weapons/quarrel/quarreltick
function battlefront:weapons/trunch/trunchtick
function battlefront:weapons/pbaton/pbatontick
function battlefront:weapons/vibrosword/vibroswordtick
function battlefront:weapons/strike/striketick
function battlefront:weapons/leiaalt/leiaalttick
function battlefront:weapons/repeater/repeatertick

#abilities
function battlefront:abilities/insight/insighttick
function battlefront:abilities/tripmine/tripminetick
function battlefront:abilities/fortify/fortifytick
function battlefront:abilities/mindtrick/mindtricktick
function battlefront:abilities/bcommand/bcommandtick
function battlefront:abilities/comrush/comrushtick
function battlefront:abilities/seektactics/seektacticstick
function battlefront:abilities/assaulttrain/assaulttraintick
function battlefront:abilities/survivor/survivortick
function battlefront:abilities/spin/spintick
function battlefront:abilities/lightning/lightningtick
function battlefront:abilities/expose/exposetick
function battlefront:abilities/duelist/duelisttick
function battlefront:abilities/pulldom/pulldomtick
function battlefront:abilities/wristrocket/wristrockettick
function battlefront:abilities/restrict/restricttick
function battlefront:abilities/helmscan/helmscantick
function battlefront:abilities/thermalvision/thermalvisiontick
function battlefront:abilities/battlefocus/battlefocustick
function battlefront:abilities/freeze/freezetick
function battlefront:abilities/retribution/retributiontick
function battlefront:abilities/choke/choketick
function battlefront:abilities/thrustsurge/thrustsurgetick

#packs 
function battlefront:jetpack/jetpacktick
function battlefront:jumppack/jumppacktick

#run post functions
function battlefront:posts/postatick
function battlefront:posts/postbtick
function battlefront:posts/postctick
function battlefront:posts/postdtick
function battlefront:posts/postetick

#knockback setter
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 1.0

#apply hero effects
execute as @a[scores={killedPlayer=1..,REBhero=1}] run effect give @s minecraft:instant_health 1 0 true
execute as @a[scores={killedPlayer=1..,REShero=1}] run effect give @s minecraft:instant_health 1 0 true
execute as @a[scores={killedPlayer=1..,FOhero=1}] run effect give @s minecraft:instant_health 1 0 true
execute as @a[scores={killedPlayer=1..,EMPhero=1}] run effect give @s minecraft:instant_health 1 0 true
execute as @a[scores={killedPlayer=1..,REPhero=1}] run effect give @s minecraft:instant_health 1 0 true
execute as @a[scores={killedPlayer=1..,CIShero=1}] run effect give @s minecraft:instant_health 1 0 true

#flame particle on jumppack use
execute at @a[nbt={Inventory:[{Slot:102b,Count:1b,id:"minecraft:leather_chestplate",tag:{Tags:["actualjumppack"]}}],ActiveEffects:[{Id:25b}]}] rotated ~ 0 positioned ^ ^ ^-0.3 run particle minecraft:flame ~ ~1 ~ 0 0 0 0 0

#run arrow explosion effects
execute at @e[type=arrow,nbt={inGround:1b,Color:12397074}] run summon minecraft:creeper ~ ~ ~ {powered:0,Fuse:0,ignited:1,ExplosionRadius:2,DeathLootTable:"minecraft:empty",Silent:1,CustomName:'"G125 Projectile Bolt"'}
execute at @e[type=arrow,nbt={inGround:1b,Color:12397073}] run summon minecraft:creeper ~ ~ ~ {powered:0,Fuse:0,ignited:1,ExplosionRadius:2,DeathLootTable:"minecraft:empty",Silent:1,CustomName:'"Bowcaster Bolt"'}

#ability restrictor
execute as @a[scores={abilitiesBlocked=2..}] run scoreboard players remove @s abilitiesBlocked 1
execute as @a[scores={abilitiesBlocked=1}] run tellraw @s {"text":"Abilities are no longer restricted.","color":"green"}
execute as @a[scores={abilitiesBlocked=..1}] run scoreboard players set @s abilitiesBlocked 0

#kill arrows in ground
execute as @e[type=arrow,nbt={inGround:1b}] run kill @s
execute as @e[type=spectral_arrow,nbt={inGround:1b}] run kill @s

#apply damageTaken scores from friendlies to anakin
execute as @a[scores={REPhero=1},nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDZkZDFlNzE2MTI0YzRmNGM0ZWIzMDgzNjViZjNhNDhlNTI5ODFiOTVkZWU0NDVhYjZlNTc4NGI3ZDRmOWZjIn19fQ=="}]}}}}]}] at @s run scoreboard players operation @s damageTaken += @a[team=REP,distance=1..20] damageTaken
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDZkZDFlNzE2MTI0YzRmNGM0ZWIzMDgzNjViZjNhNDhlNTI5ODFiOTVkZWU0NDVhYjZlNTc4NGI3ZDRmOWZjIn19fQ=="}]}}}}]}] run scoreboard players set @s damageTaken 0

#slowness to specialists
execute as @a[scores={defeated=0},nbt={SelectedItem:{tag:{Tags:["sniper"],Charged:1b}}},nbt=!{ActiveEffects:[{Id:2b}]}] run effect give @s slowness 1 5 true

#death handler

#first stage - scoreboard reset
execute as @a[scores={defeated=1}] run gamemode spectator @s
execute unless entity @e[type=armor_stand,tag=deathspec] as @a[scores={defeated=1}] run tellraw @s ["",{"text":"Could not find a valid death spectate area to teleport you to.","color":"red"},{"text":"\n"},{"text":"To set a death spectate area, run the command ","color":"red"},{"text":"/function battlefront:setdeathspectatearea","color":"red","clickEvent":{"action":"run_command","value":"/function battlefront:setdeathspectatearea"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to enter command"}}}]
execute unless entity @e[type=armor_stand,tag=facespec] as @a[scores={defeated=1}] run tellraw @s ["",{"text":"Could not find a valid death facing area to face your camera at.","color":"red"},{"text":"\n"},{"text":"To set a death facing area, run the command ","color":"red"},{"text":"/function battlefront:setfacingspectatearea","color":"red","clickEvent":{"action":"run_command","value":"/function battlefront:setfacingspectatearea"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to enter command"}}}]
execute as @a[scores={defeated=1,FOhero=1}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={defeated=1,REShero=1}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={defeated=1,REBhero=1}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={defeated=1,EMPhero=1}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={defeated=1,REPhero=1}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={defeated=1,CIShero=1}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={defeated=1,EMPhero=1}] run scoreboard players set @s chokeDuration 0
execute as @a[scores={defeated=1,FOhero=1}] run scoreboard players set @s FOhero 0
execute as @a[scores={defeated=1,REShero=1}] run scoreboard players set @s REShero 0
execute as @a[scores={defeated=1,REBhero=1}] run scoreboard players set @s REBhero 0
execute as @a[scores={defeated=1,EMPhero=1}] run scoreboard players set @s EMPhero 0
execute as @a[scores={defeated=1,REPhero=1}] run scoreboard players set @s REPhero 0
execute as @a[scores={defeated=1,CIShero=1}] run scoreboard players set @s CIShero 0
execute as @a[scores={defeated=1}] run scoreboard players set @s passCooldown 0
execute as @a[scores={defeated=1}] run scoreboard players set @s pbatCooldown 0
execute as @a[scores={defeated=1}] run scoreboard players set @s trunCooldown 0
execute as @a[scores={defeated=1}] run scoreboard players set @s spinCooldown 0
execute as @a[scores={defeated=1}] run item replace entity @s armor.chest with air
execute as @a[scores={defeated=1}] run tellraw @s {"text":"Respawning...","color":"green","underlined": true}
execute as @a[scores={defeated=1}] run scoreboard players set @s defeated 2

#second stage - death loop
execute as @a[scores={defeated=2}] run scoreboard players add @s respawnTick 1
#execute as @a[scores={defeated=2}] unless score @s hungerChecker matches 20 run effect give @s saturation 1 255
execute as @a[scores={defeated=2}] if score @s respawnTick >= @s respawnTime run tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"Choose Class","bold":true,"underlined":true},{"text":"\n"},{"text":"\n"},{"text":"Trooper","underlined":true},{"text":"\n"},{"text":"\n"},{"text":"[Assault] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:classes/assault"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as an assault"}}},{"text":"[Heavy] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:classes/heavy"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as a heavy"}}},{"text":"[Officer] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:classes/officer"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as an officer"}}},{"text":"[Specialist]","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:classes/specialist"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as a specialist"}}},{"text":"\n"},{"text":"\n"},{"text":"Reinforcement","underlined":true},{"text":"\n"},{"text":"\n"},{"text":"[Aerial] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:classes/aerial"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as an aerial"}}},{"text":"[Enforcer] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:classes/enforcer"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as an enforcer"}}},{"text":"[Infiltrator]","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:classes/infiltrator"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as an infiltrator"}}},{"text":"\n"},{"text":"\n"},{"text":"Heroes","underlined":true}]
execute as @a[scores={defeated=2},team=FO] if score @s respawnTick >= @s respawnTime run tellraw @s ["",{"text":"\n"},{"text":"[Phasma] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:heroes/phasma"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as Phasma"}}},{"text":"[Kylo Ren] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:heroes/kylo"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as Kylo Ren"}}}]
execute as @a[scores={defeated=2},team=EMP] if score @s respawnTick >= @s respawnTime run tellraw @s ["",{"text":"\n"},{"text":"[Darth Vader] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:heroes/vader"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as Darth Vader"}}},{"text":"[Emperor Palpatine] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:heroes/sheev"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as Emperor Palpatine"}}}]
execute as @a[scores={defeated=2},team=REB] if score @s respawnTick >= @s respawnTime run tellraw @s ["",{"text":"\n"},{"text":"[Luke Skywalker] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:heroes/luke"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as Luke Skywalker"}}},{"text":"[Princess Leia] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:heroes/leia"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as Princess Leia"}}}]
execute as @a[scores={defeated=2},team=RES] if score @s respawnTick >= @s respawnTime run tellraw @s ["",{"text":"\n"},{"text":"[Rey]","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:heroes/rey"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as Rey"}}}]
execute as @a[scores={defeated=2},team=REP] if score @s respawnTick >= @s respawnTime run tellraw @s ["",{"text":"\n"},{"text":"[Anakin Skywalker] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:heroes/anakin"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as Anakin Skywalker"}}},{"text":"[Obi-Wan Kenobi] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:heroes/obiwan"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as Obi-Wan Kenobi"}}}]
execute as @a[scores={defeated=2},team=CIS] if score @s respawnTick >= @s respawnTime run tellraw @s ["",{"text":"\n"},{"text":"[Count Dooku] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:heroes/dooku"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as Count Dooku"}}},{"text":"[General Grievous] ","color":"gray","clickEvent":{"action":"run_command","value":"/function battlefront:heroes/grievous"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to spawn in as General Grievous"}}}]
execute as @a[scores={defeated=2}] if entity @e[type=armor_stand,tag=deathspec] if entity @e[type=armor_stand,tag=facespec] at @e[type=armor_stand,tag=deathspec] run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=facespec,limit=1]
execute as @a[scores={defeated=3..}] run scoreboard players set @s defeated 2
execute as @a[scores={clickStick=1..}] run scoreboard players set @s clickStick 0
scoreboard players set @a killedPlayer 0