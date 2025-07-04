#init the thousand scoreboard objectives

#FO jetpack
scoreboard objectives add hoverpackEquipped dummy
scoreboard objectives add hoverpackFuel dummy
scoreboard objectives add hoverpackDead dummy
scoreboard objectives add hoverpackTick dummy
scoreboard objectives add soundTick dummy
scoreboard objectives add stopMove dummy

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
scoreboard objectives add rocketCooldown dummy
scoreboard objectives add restrCooldown dummy
scoreboard objectives add helmCooldown dummy
scoreboard objectives add thermCooldown dummy
scoreboard objectives add frezCooldown dummy
scoreboard objectives add insigCooldown dummy
scoreboard objectives add chokeCooldown dummy
scoreboard objectives add vibroCooldown dummy
scoreboard objectives add thrustCooldown dummy
scoreboard objectives add mineCooldown dummy
scoreboard objectives add shotCooldown dummy
scoreboard objectives add intelCooldown dummy
scoreboard objectives add doubCooldown dummy
scoreboard objectives add pullCooldown dummy
scoreboard objectives add focusedRageCooldown dummy
scoreboard objectives add pushCooldown dummy
scoreboard objectives add comRushCooldown dummy
scoreboard objectives add auraCooldown dummy
scoreboard objectives add grenadeCooldown dummy
scoreboard objectives add scannerBeaconCooldown dummy
scoreboard objectives add detoniteCooldown dummy
scoreboard objectives add jetpackDashCooldown dummy

#durations
scoreboard objectives add duelDuration dummy
scoreboard objectives add insigDuration dummy
scoreboard objectives add chokeDuration dummy
scoreboard objectives add retribDuration dummy
scoreboard objectives add bfocDuration dummy
scoreboard objectives add focusedRageDuration dummy
scoreboard objectives add auraDuration dummy
scoreboard objectives add freezeDuration dummy
scoreboard objectives add scannerBeaconStrikeDuration dummy
scoreboard objectives add scannerBeaconScanDuration dummy

#charges
scoreboard objectives add rushCharges dummy

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
scoreboard objectives add saberBlocked minecraft.used:shield

#misc
scoreboard objectives add thermGlowing dummy
scoreboard objectives add helmGlowing dummy
scoreboard objectives add abilitiesBlocked dummy
scoreboard objectives add respawnTime dummy
scoreboard objectives add respawnTick dummy
scoreboard objectives add nearGround dummy
scoreboard objectives add fuelTick dummy
scoreboard objectives add showDelay dummy
scoreboard objectives add secondsHelper dummy
scoreboard objectives add skip dummy
scoreboard objectives add rushJumpStopper dummy
scoreboard objectives add mineBlink dummy
scoreboard objectives add Slot dummy
scoreboard objectives add throwGrenade used:lingering_potion

#init objective default values
scoreboard players set @a hoverpackFuel 0
scoreboard players set @a fortCooldown 0
scoreboard players set @a mindCooldown 0
scoreboard players set @a jumpCooldown 0
scoreboard players set @a quarCooldown 0
scoreboard players set @a bcomCooldown 0
scoreboard players set @a bfocCooldown 0
scoreboard players set @a trunCooldown 0
scoreboard players set @a rushCooldown 0
scoreboard players set @a seekCooldown 0
scoreboard players set @a tranCooldown 0
scoreboard players set @a pbatCooldown 0
scoreboard players set @a survCooldown 0
scoreboard players set @a spinCooldown 0
scoreboard players set @a elecCooldown 0
scoreboard players set @a weakCooldown 0
scoreboard players set @a duelCooldown 0
scoreboard players set @a passCooldown 0
scoreboard players set @a domiCooldown 0
scoreboard players set @a wrisCooldown 0
scoreboard players set @a restrCooldown 0
scoreboard players set @a helmCooldown 0
scoreboard players set @a thermCooldown 0
scoreboard players set @a frezCooldown 0
scoreboard players set @a insigCooldown 0
scoreboard players set @a chokeCooldown 0
scoreboard players set @a vibroCooldown 0
scoreboard players set @a thrustCooldown 0
scoreboard players set @a mineCooldown 0
scoreboard players set @a shotCooldown 0
scoreboard players set @a intelCooldown 0
scoreboard players set @a doubCooldown 0
scoreboard players set @a pullCooldown 0
scoreboard players set @a focusedRageCooldown 0
scoreboard players set @a pushCooldown 0
scoreboard players set @a comRushCooldown 0
scoreboard players set @a auraCooldown 0
scoreboard players set @a grenadeCooldown 0
scoreboard players set @a scannerBeaconCooldown 0
scoreboard players set @a detoniteCooldown 0
scoreboard players set @a jetpackDashCooldown 0
execute if score @p respawnTime matches 0 run scoreboard players set @a respawnTime 20

#init teams
team add FO {"text":"First Order","color":"gray"}
team add RES {"text":"The Resistance","color":"yellow"}
team add EMP {"text":"The Empire","color":"dark_red"}
team add REB {"text":"The Rebellion","color":"yellow"}
team add REP {"text":"Galactic Republic","color":"aqua"}
team add CIS {"text":"Separatist Alliance","color":"gold"}
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
team modify FO collisionRule never
team modify RES collisionRule never
team modify EMP collisionRule never
team modify REB collisionRule never
team modify REP collisionRule never
team modify CIS collisionRule never

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