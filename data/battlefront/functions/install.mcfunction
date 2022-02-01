#init the thousand scoreboard objectives

#FO jetpack
scoreboard objectives add hoverpackEquipped dummy
scoreboard objectives add hoverpackFuel dummy
scoreboard objectives add hoverpackDead dummy
scoreboard objectives add hoverpackTick dummy
scoreboard objectives add soundTick dummy
scoreboard objectives add sound-enabled dummy

#cooldowns
scoreboard objectives add fortCooldown dummy
scoreboard objectives add mindCooldown dummy
scoreboard objectives add jumpCooldown dummy
scoreboard objectives add quarCooldown dummy
scoreboard objectives add bcomCooldown dummy
scoreboard objectives add bfocCooldown dummy
scoreboard objectives add trunCooldown dummy
scoreboard objectives add rushCooldown dummy
scoreboard objectives add seekCooldown dummy
scoreboard objectives add tranCooldown dummy
scoreboard objectives add pbatCooldown dummy
scoreboard objectives add survCooldown dummy
scoreboard objectives add spinCooldown dummy
scoreboard objectives add elecCooldown dummy
scoreboard objectives add weakCooldown dummy
scoreboard objectives add duelCooldown dummy
scoreboard objectives add passCooldown dummy
scoreboard objectives add domiCooldown dummy
scoreboard objectives add wrisCooldown dummy
scoreboard objectives add restrCooldown dummy
scoreboard objectives add helmCooldown dummy
scoreboard objectives add thermCooldown dummy
scoreboard objectives add frezCooldown dummy
scoreboard objectives add insigCooldown dummy
scoreboard objectives add chokeCooldown dummy
scoreboard objectives add vibroCooldown dummy
scoreboard objectives add thrustCooldown dummy
scoreboard objectives add mineCooldown dummy
scoreboard objectives add stCooldown dummy

#posts
scoreboard objectives add postA dummy
scoreboard objectives add postB dummy
scoreboard objectives add postC dummy
scoreboard objectives add postD dummy
scoreboard objectives add postE dummy
scoreboard objectives add postReadable dummy

#heroes
scoreboard objectives add FOhero dummy
scoreboard objectives add REShero dummy
scoreboard objectives add REBhero dummy
scoreboard objectives add EMPhero dummy
scoreboard objectives add REPhero dummy
scoreboard objectives add CIShero dummy

#statistic
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add clickStick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add clickHover minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add useTruncheon minecraft.used:minecraft.stone_sword
scoreboard objectives add usePBaton minecraft.used:minecraft.iron_sword
scoreboard objectives add useStrike minecraft.used:minecraft.diamond_axe
scoreboard objectives add useSpin minecraft.used:minecraft.trident
scoreboard objectives add defeated minecraft.custom:minecraft.deaths
scoreboard objectives add killedPlayer minecraft.custom:minecraft.player_kills
scoreboard objectives add damageTaken minecraft.custom:damage_taken

#misc
scoreboard objectives add helmGlowing dummy
scoreboard objectives add abilitiesBlocked dummy
scoreboard objectives add duelDuration dummy
scoreboard objectives add insigDuration dummy
scoreboard objectives add chokeDuration dummy
scoreboard objectives add respawnTime dummy
scoreboard objectives add respawnTick dummy

#init objective default values
scoreboard players set @a hoverpackFuel 0
scoreboard players set @a stCooldown 0
scoreboard players set @a trunCooldown 0
scoreboard players set @a vibroCooldown 0
scoreboard players set @a pbatCooldown 0
scoreboard players set @a passCooldown 0
scoreboard players set @a spinCooldown 0
execute if score @p respawnTime matches 0 run scoreboard players set @a respawnTime 20

#init teams
team add FO {"text":"First Order","color":"gray"}
team add RES {"text":"The Resistance","color":"yellow"}
team add EMP {"text":"The Empire","color":"dark_red"}
team add REB {"text":"The Rebellion","color":"yellow"}
team add REP {"text":"Galactic Republic","color":"aqua"}
team add CIS {"text":"The Confederacy","color":"gold"}
team modify FO friendlyFire false
team modify RES friendlyFire false
team modify EMP friendlyFire false
team modify REB friendlyFire false
team modify REP friendlyFire false
team modify CIS friendlyFire false
team modify FO seeFriendlyInvisibles false
team modify RES seeFriendlyInvisibles false
team modify EMP seeFriendlyInvisibles false
team modify REB seeFriendlyInvisibles false
team modify REP seeFriendlyInvisibles false
team modify CIS seeFriendlyInvisibles false
team modify FO nametagVisibility hideForOtherTeams
team modify RES nametagVisibility hideForOtherTeams
team modify EMP nametagVisibility hideForOtherTeams
team modify REB nametagVisibility hideForOtherTeams
team modify REP nametagVisibility hideForOtherTeams
team modify CIS nametagVisibility hideForOtherTeams

#init post bars
bossbar add battlefront:posta {"text":"Post A"}
bossbar add battlefront:postb {"text":"Post B"}
bossbar add battlefront:postc {"text":"Post C"}
bossbar add battlefront:postd {"text":"Post D"}
bossbar add battlefront:poste {"text":"Post E"}
bossbar set battlefront:posta max 200
bossbar set battlefront:postb max 200
bossbar set battlefront:postc max 200
bossbar set battlefront:postd max 200
bossbar set battlefront:poste max 200

#init gamerules
gamerule mobGriefing false
gamerule keepInventory true
gamerule doWeatherCycle false
gamerule doImmediateRespawn true