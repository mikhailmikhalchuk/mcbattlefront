#reset stats
scoreboard players set @s defeated 0

#cooldowns
scoreboard players set @s fortCooldown 0
scoreboard players set @s mindCooldown 0
scoreboard players set @s jumpCooldown 0
scoreboard players set @s quarCooldown 0
scoreboard players set @s bcomCooldown 0
scoreboard players set @s bfocCooldown 0
scoreboard players set @s trunCooldown 0
scoreboard players set @s rushCooldown 0
scoreboard players set @s seekCooldown 0
scoreboard players set @s tranCooldown 0
scoreboard players set @s pbatCooldown 0
scoreboard players set @s survCooldown 0
scoreboard players set @s spinCooldown 0
scoreboard players set @s elecCooldown 0
scoreboard players set @s weakCooldown 0
scoreboard players set @s duelCooldown 0
scoreboard players set @s passCooldown 0
scoreboard players set @s domiCooldown 0
scoreboard players set @s wrisCooldown 0
scoreboard players set @s restrCooldown 0
scoreboard players set @s helmCooldown 0
scoreboard players set @s thermCooldown 0
scoreboard players set @s frezCooldown 0
scoreboard players set @s insigCooldown 0
scoreboard players set @s chokeCooldown 0
scoreboard players set @s vibroCooldown 0
scoreboard players set @s thrustCooldown 0
scoreboard players set @s mineCooldown 0
scoreboard players set @s shotCooldown 0
scoreboard players set @s intelCooldown 0
scoreboard players set @s doubCooldown 0
scoreboard players set @s pullCooldown 0
scoreboard players set @s focusedRageCooldown 0
scoreboard players set @s pushCooldown 0
scoreboard players set @s comRushCooldown 0
scoreboard players set @s auraCooldown 0
scoreboard players set @s grenadeCooldown 0
scoreboard players set @s scannerBeaconCooldown 0
scoreboard players set @s detoniteCooldown 0

#misc
scoreboard players set @s damageTaken 0
scoreboard players set @s useTruncheon 0
scoreboard players set @s usePBaton 0
scoreboard players set @s hoverpackFuel 0
scoreboard players set @s respawnTick 0
scoreboard players set @s abilitiesBlocked 0

#set adventure
gamemode adventure @s

#spawn player at spawnpoint
execute if entity @s[team=FO] unless entity @e[type=armor_stand,tag=FOspawn] run tellraw @s ["",{"text":"Could not find a valid First Order spawnpoint to spawn you at.\nTo set a First Order spawnpoint, run the command","color":"red"},{"text":" \"/function battlefront:setteamspawn/fo\"","color":"red","click_event":{action:"suggest_command",command:"/function battlefront:setteamspawn/fo"},"hover_event":{action:"show_text",value:{"text":"Click to enter command"}}}]
execute if entity @s[team=FO] at @e[type=armor_stand,tag=FOspawn] run tp @s ~ ~ ~
execute if entity @s[team=RES] unless entity @e[type=armor_stand,tag=RESspawn] run tellraw @s ["",{"text":"Could not find a valid Resistance spawnpoint to spawn you at.\nTo set a Resistance spawnpoint, run the command","color":"red"},{"text":" \"/function battlefront:setteamspawn/res\"","color":"red","click_event":{action:"suggest_command",command:"/function battlefront:setteamspawn/res"},"hover_event":{action:"show_text",value:{"text":"Click to enter command"}}}]
execute if entity @s[team=RES] at @e[type=armor_stand,tag=RESspawn] run tp @s ~ ~ ~
execute if entity @s[team=EMP] unless entity @e[type=armor_stand,tag=EMPspawn] run tellraw @s ["",{"text":"Could not find a valid Empire spawnpoint to spawn you at.\nTo set an Empire spawnpoint, run the command","color":"red"},{"text":" \"/function battlefront:setteamspawn/emp\"","color":"red","click_event":{action:"suggest_command",command:"/function battlefront:setteamspawn/emp"},"hover_event":{action:"show_text",value:{"text":"Click to enter command"}}}]
execute if entity @s[team=EMP] at @e[type=armor_stand,tag=EMPspawn] run tp @s ~ ~ ~
execute if entity @s[team=REB] unless entity @e[type=armor_stand,tag=REBspawn] run tellraw @s ["",{"text":"Could not find a valid Rebellion spawnpoint to spawn you at.\nTo set a Rebellion spawnpoint, run the command","color":"red"},{"text":" \"/function battlefront:setteamspawn/reb\"","color":"red","click_event":{action:"suggest_command",command:"/function battlefront:setteamspawn/reb"},"hover_event":{action:"show_text",value:{"text":"Click to enter command"}}}]
execute if entity @s[team=REB] at @e[type=armor_stand,tag=REBspawn] run tp @s ~ ~ ~
execute if entity @s[team=REP] unless entity @e[type=armor_stand,tag=REPspawn] run tellraw @s ["",{"text":"Could not find a valid Republic spawnpoint to spawn you at.\nTo set a Republic spawnpoint, run the command","color":"red"},{"text":" \"/function battlefront:setteamspawn/rep\"","color":"red","click_event":{action:"suggest_command",command:"/function battlefront:setteamspawn/rep"},"hover_event":{action:"show_text",value:{"text":"Click to enter command"}}}]
execute if entity @s[team=REP] at @e[type=armor_stand,tag=REPspawn] run tp @s ~ ~ ~
execute if entity @s[team=CIS] unless entity @e[type=armor_stand,tag=CISspawn] run tellraw @s ["",{"text":"Could not find a valid Confederacy spawnpoint to spawn you at.\nTo set a Confederacy spawnpoint, run the command","color":"red"},{"text":" \"/function battlefront:setteamspawn/cis\"","color":"red","click_event":{action:"suggest_command",command:"/function battlefront:setteamspawn/cis"},"hover_event":{action:"show_text",value:{"text":"Click to enter command"}}}]
execute if entity @s[team=CIS] at @e[type=armor_stand,tag=CISspawn] run tp @s ~ ~ ~

#give spawnprot
effect give @s minecraft:instant_health 1 20 true
effect give @s minecraft:resistance 3 255 true