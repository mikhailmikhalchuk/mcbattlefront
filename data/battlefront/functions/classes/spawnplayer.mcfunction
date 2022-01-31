scoreboard players set @s defeated 0
scoreboard players set @s fortCooldown 0
scoreboard players set @s mindCooldown 0
scoreboard players set @s jumpCooldown 0
scoreboard players set @s quarCooldown 0
scoreboard players set @s bcomCooldown 0
scoreboard players set @s bfocCooldown 0
scoreboard players set @s thermCooldown 0
scoreboard players set @s mineCooldown 0
scoreboard players set @s tranCooldown 0
scoreboard players set @s seekCooldown 0
scoreboard players set @s duelCooldown 0
scoreboard players set @s weakCooldown 0
scoreboard players set @s domiCooldown 0
scoreboard players set @s wrisCooldown 0
scoreboard players set @s retrCooldown 0
scoreboard players set @s helmCooldown 0
scoreboard players set @s frezCooldown 0
scoreboard players set @s insiCooldown 0
scoreboard players set @s chokeCooldown 0
scoreboard players set @s vibroCooldown 0
scoreboard players set @s damageTaken 0
scoreboard players set @s useTruncheon 0
scoreboard players set @s usePBaton 0
scoreboard players set @s jetpacks-fuel 0
scoreboard players set @s respawnTick 0
gamemode adventure @s
execute if entity @s[team=FO] unless entity @e[type=armor_stand,tag=FOspawn] run tellraw @s ["",{"text":"Could not find a valid First Order spawnpoint to spawn you at.\nTo set a First Order spawnpoint, run the command","color":"red"},{"text":" \"/function battlefront:setteamspawn/fo\"","color":"red","clickEvent":{"action":"suggest_command","value":"/function battlefront:setteamspawn/fo"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to enter command"}}}]
execute if entity @s[team=FO] at @e[type=armor_stand,tag=FOspawn] run tp @s ~ ~ ~
execute if entity @s[team=RES] unless entity @e[type=armor_stand,tag=RESspawn] run tellraw @s ["",{"text":"Could not find a valid Resistance spawnpoint to spawn you at.\nTo set a Resistance spawnpoint, run the command","color":"red"},{"text":" \"/function battlefront:setteamspawn/res\"","color":"red","clickEvent":{"action":"suggest_command","value":"/function battlefront:setteamspawn/res"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to enter command"}}}]
execute if entity @s[team=RES] at @e[type=armor_stand,tag=RESspawn] run tp @s ~ ~ ~
execute if entity @s[team=EMP] unless entity @e[type=armor_stand,tag=EMPspawn] run tellraw @s ["",{"text":"Could not find a valid Empire spawnpoint to spawn you at.\nTo set an Empire spawnpoint, run the command","color":"red"},{"text":" \"/function battlefront:setteamspawn/emp\"","color":"red","clickEvent":{"action":"suggest_command","value":"/function battlefront:setteamspawn/emp"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to enter command"}}}]
execute if entity @s[team=EMP] at @e[type=armor_stand,tag=EMPspawn] run tp @s ~ ~ ~
execute if entity @s[team=REB] unless entity @e[type=armor_stand,tag=REBspawn] run tellraw @s ["",{"text":"Could not find a valid Rebellion spawnpoint to spawn you at.\nTo set a Rebellion spawnpoint, run the command","color":"red"},{"text":" \"/function battlefront:setteamspawn/reb\"","color":"red","clickEvent":{"action":"suggest_command","value":"/function battlefront:setteamspawn/reb"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to enter command"}}}]
execute if entity @s[team=REB] at @e[type=armor_stand,tag=REBspawn] run tp @s ~ ~ ~
execute if entity @s[team=REP] unless entity @e[type=armor_stand,tag=REPspawn] run tellraw @s ["",{"text":"Could not find a valid Republic spawnpoint to spawn you at.\nTo set a Republic spawnpoint, run the command","color":"red"},{"text":" \"/function battlefront:setteamspawn/rep\"","color":"red","clickEvent":{"action":"suggest_command","value":"/function battlefront:setteamspawn/rep"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to enter command"}}}]
execute if entity @s[team=REP] at @e[type=armor_stand,tag=REPspawn] run tp @s ~ ~ ~
execute if entity @s[team=CIS] unless entity @e[type=armor_stand,tag=CISspawn] run tellraw @s ["",{"text":"Could not find a valid Confederacy spawnpoint to spawn you at.\nTo set a Confederacy spawnpoint, run the command","color":"red"},{"text":" \"/function battlefront:setteamspawn/cis\"","color":"red","clickEvent":{"action":"suggest_command","value":"/function battlefront:setteamspawn/cis"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to enter command"}}}]
execute if entity @s[team=CIS] at @e[type=armor_stand,tag=CISspawn] run tp @s ~ ~ ~
effect give @s minecraft:instant_health 1 20 true
effect give @s minecraft:resistance 3 255 true