title @a actionbar {"text":""}

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
function battlefront:weapons/lightning/lightningtick
function battlefront:weapons/spin/spintick

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
function battlefront:abilities/impintel/impinteltick
function battlefront:abilities/doubleeffort/doubleefforttick
function battlefront:abilities/pull/pulltick
function battlefront:abilities/focusedrage/focusedragetick
function battlefront:abilities/push/pushtick
function battlefront:abilities/rush/rushtick
function battlefront:abilities/darkaura/darkauratick

#packs 
function battlefront:jetpack/jetpacktick
function battlefront:jumppack/jumppacktick

#run post functions
function battlefront:posts/postatick
function battlefront:posts/postbtick
function battlefront:posts/postctick
function battlefront:posts/postdtick
function battlefront:posts/postetick

execute as @a[scores={shotCooldown=1..}] run scoreboard players add @s shotCooldown 1
scoreboard players set $const20 secondsHelper 20

#knockback setter
execute as @a run attribute @s minecraft:knockback_resistance base set 1.0

#apply health effects
execute as @a[scores={killedPlayer=1..,REBhero=1}] run effect give @s minecraft:instant_health 1 0 true
execute as @a[scores={killedPlayer=1..,REShero=1}] run effect give @s minecraft:instant_health 1 0 true
execute as @a[scores={killedPlayer=1..,FOhero=1}] run effect give @s minecraft:instant_health 1 0 true
execute as @a[scores={killedPlayer=1..,EMPhero=1}] run effect give @s minecraft:instant_health 1 0 true
execute as @a[scores={killedPlayer=1..,REPhero=1}] run effect give @s minecraft:instant_health 1 0 true
execute as @a[scores={killedPlayer=1..,CIShero=1}] run effect give @s minecraft:instant_health 1 0 true
execute as @a[scores={killedPlayer=1..,bfocDuration=1..}] run effect give @s minecraft:instant_health 2 0 true

#flame particle on jumppack use
execute as @a if items entity @s armor.chest *[custom_data={actualjumppack:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:levitation":{}}}} at @s rotated ~ 0 positioned ^-0.2 ^ ^-0.3 run particle minecraft:flame ~ ~1 ~ 0 0 0 0 0
execute as @a if items entity @s armor.chest *[custom_data={actualjumppack:true}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:levitation":{}}}} at @s rotated ~ 0 positioned ^0.2 ^ ^-0.3 run particle minecraft:flame ~ ~1 ~ 0 0 0 0 0

#run arrow explosion effects
execute as @e[type=arrow,nbt={inGround:1b}] if predicate {condition:"minecraft:entity_properties",entity:this,predicate:{components:{custom_data:{foaerialbolt:true}}}} at @s run summon minecraft:creeper ~ ~ ~ {powered:false,Fuse:0,ignited:true,ExplosionRadius:2,DeathLootTable:"minecraft:empty",Silent:true,CustomName:{"text":"G125 Projectile Bolt","color":"red"}}
execute as @e[type=arrow,nbt={inGround:1b}] if predicate {condition:"minecraft:entity_properties",entity:this,predicate:{components:{custom_data:{bowcasterbolt:true}}}} at @s run summon minecraft:creeper ~ ~ ~ {powered:true,Fuse:0,ignited:true,ExplosionRadius:2,DeathLootTable:"minecraft:empty",Silent:true,CustomName:{"text":"Bowcaster Bolt","color":"red"}}

#ability restrictor
execute as @a[scores={abilitiesBlocked=2..}] run scoreboard players remove @s abilitiesBlocked 1
execute as @a[scores={abilitiesBlocked=1}] run tellraw @s {"text":"Abilities are no longer restricted.","color":"green"}
execute as @a[scores={abilitiesBlocked=..1}] run scoreboard players set @s abilitiesBlocked 0

#kill arrows in ground
execute as @e[type=arrow,nbt={inGround:1b}] run kill @s
execute as @e[type=spectral_arrow,nbt={inGround:1b}] run kill @s

#apply damageTaken scores from friendlies to anakin
execute as @a[scores={REPhero=1}] if items entity @s armor.head *[custom_data={anakin:true}] at @s run scoreboard players operation @s damageTaken += @a[team=REP,distance=1..20] damageTaken
execute as @a[scores={REPhero=1}] unless items entity @s armor.head *[custom_data={anakin:true}] run scoreboard players set @s damageTaken 0

#slowness to specialists
execute as @a[scores={defeated=0},nbt={SelectedItem:{components:{"minecraft:charged_projectiles":[{id:"minecraft:arrow"}]}}}] if items entity @s weapon crossbow[custom_data={sniper:true}] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:slowness":{}}}} run effect give @s slowness 1 5 true

#saber block
#execute as @a[scores={FOhero=1,saberBlocked=1..}] run item replace entity @s weapon.offhand with minecraft:shield{display:{Name:'{"text":"Saber Block","color":"red","italic":false}'},Enchantments:[{id:"feather_falling",lvl:1}],HideFlags:1,BlockEntityTag:{Base:14}} 1

#show ticker
execute as @a[scores={showDelay=1..}] run scoreboard players remove @s showDelay 1

execute as @e[tag=laser] at @s run function battlefront:moveblastershot
execute as @e[tag=laser] at @s run function battlefront:moveblastershot

#death handler

#first stage - scoreboard reset
execute as @a[scores={defeated=1}] run gamemode spectator @s
execute unless entity @e[type=armor_stand,tag=deathspec] as @a[scores={defeated=1}] run tellraw @s ["",{"text":"Could not find a valid death spectate area to teleport you to.","color":"red"},{"text":"\n"},{"text":"To set a death spectate area, run the command ","color":"red"},{"text":"/function battlefront:setdeathspectatearea","color":"red","click_event":{action:"run_command",command:"/function battlefront:setdeathspectatearea"},"hover_event":{action:"show_text",value:{"text":"Click to enter command"}}}]
execute unless entity @e[type=armor_stand,tag=facespec] as @a[scores={defeated=1}] run tellraw @s ["",{"text":"Could not find a valid death facing area to face your camera at.","color":"red"},{"text":"\n"},{"text":"To set a death facing area, run the command ","color":"red"},{"text":"/function battlefront:setfacingspectatearea","color":"red","click_event":{action:"run_command",command:"/function battlefront:setdeathfacingarea"},"hover_event":{action:"show_text",value:{"text":"Click to enter command"}}}]
execute as @a[scores={defeated=1,FOhero=1}] run attribute @s minecraft:max_health base reset
execute as @a[scores={defeated=1,REShero=1}] run attribute @s minecraft:max_health base reset
execute as @a[scores={defeated=1,REBhero=1}] run attribute @s minecraft:max_health base reset
execute as @a[scores={defeated=1,EMPhero=1}] run attribute @s minecraft:max_health base reset
execute as @a[scores={defeated=1,REPhero=1}] run attribute @s minecraft:max_health base reset
execute as @a[scores={defeated=1,CIShero=1}] run attribute @s minecraft:max_health base reset
execute as @a[scores={defeated=1}] run attribute @s minecraft:attack_damage base reset
execute as @a[scores={defeated=1}] run attribute @s minecraft:attack_speed base reset
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
execute as @a[scores={defeated=1},team=FO] run tellraw @s {"text":"Respawning...","color":"green","underlined": true,"click_event":{action:"run_command",command:"/dialog show @s battlefront:firstorderdialog"},"hover_event":{action:"show_text",value:{"text":"Click here to show spawn dialog"}}}
execute as @a[scores={defeated=1},team=EMP] run tellraw @s {"text":"Respawning...","color":"green","underlined": true,"click_event":{action:"run_command",command:"/dialog show @s battlefront:empiredialog"},"hover_event":{action:"show_text",value:{"text":"Click here to show spawn dialog"}}}
execute as @a[scores={defeated=1},team=REB] run tellraw @s {"text":"Respawning...","color":"green","underlined": true,"click_event":{action:"run_command",command:"/dialog show @s battlefront:rebelliondialog"},"hover_event":{action:"show_text",value:{"text":"Click here to show spawn dialog"}}}
execute as @a[scores={defeated=1},team=RES] run tellraw @s {"text":"Respawning...","color":"green","underlined": true,"click_event":{action:"run_command",command:"/dialog show @s battlefront:resistancedialog"},"hover_event":{action:"show_text",value:{"text":"Click here to show spawn dialog"}}}
execute as @a[scores={defeated=1},team=REP] run tellraw @s {"text":"Respawning...","color":"green","underlined": true,"click_event":{action:"run_command",command:"/dialog show @s battlefront:republicdialog"},"hover_event":{action:"show_text",value:{"text":"Click here to show spawn dialog"}}}
execute as @a[scores={defeated=1},team=CIS] run tellraw @s {"text":"Respawning...","color":"green","underlined": true,"click_event":{action:"run_command",command:"/dialog show @s battlefront:separatistdialog"},"hover_event":{action:"show_text",value:{"text":"Click here to show spawn dialog"}}}
execute as @a[scores={defeated=1}] run scoreboard players set @s defeated 2

#second stage - death loop
execute as @a[scores={defeated=2}] run scoreboard players add @s respawnTick 1
#execute as @a[scores={defeated=2}] unless score @s hungerChecker matches 20 run effect give @s saturation 1 255

#execute as @a[scores={defeated=2},team=FO] if score @s respawnTick >= @s respawnTime unless score @s showDelay matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"[Phasma] ","color":"gray","click_event":{action:"run_command",command:"/function battlefront:heroes/phasma"},"hover_event":{"action":"show_text",value:{"text":"Click to spawn in as Phasma"}}},{"text":"[Kylo Ren] ","color":"gray","click_event":{action:"run_command",command:"/function battlefront:heroes/kylo"},"hover_event":{"action":"show_text",value:{"text":"Click to spawn in as Kylo Ren"}}}]

execute as @a[scores={defeated=2},team=FO] if score @s respawnTick = @s respawnTime unless score @s showDelay matches 1.. run dialog show @s battlefront:firstorderdialog
execute as @a[scores={defeated=2},team=EMP] if score @s respawnTick = @s respawnTime unless score @s showDelay matches 1.. run dialog show @s battlefront:empiredialog
execute as @a[scores={defeated=2},team=REB] if score @s respawnTick = @s respawnTime unless score @s showDelay matches 1.. run dialog show @s battlefront:rebelliondialog
execute as @a[scores={defeated=2},team=RES] if score @s respawnTick = @s respawnTime unless score @s showDelay matches 1.. run dialog show @s battlefront:resistancedialog
execute as @a[scores={defeated=2},team=REP] if score @s respawnTick = @s respawnTime unless score @s showDelay matches 1.. run dialog show @s battlefront:republicdialog
execute as @a[scores={defeated=2},team=CIS] if score @s respawnTick = @s respawnTime unless score @s showDelay matches 1.. run dialog show @s battlefront:separatistdialog

execute as @a[scores={defeated=2}] if entity @e[type=armor_stand,tag=deathspec] if entity @e[type=armor_stand,tag=facespec] at @e[type=armor_stand,tag=deathspec] run tp @s ~ ~-10000 ~ facing entity @e[type=armor_stand,tag=facespec,limit=1]
execute as @a[scores={defeated=3..}] run scoreboard players set @s respawnTick 0
execute as @a[scores={defeated=3..}] run scoreboard players set @s defeated 2
execute as @a[scores={clickStick=1..}] run scoreboard players set @s clickStick 0
scoreboard players set @a killedPlayer 0
scoreboard players set @a saberBlocked 0