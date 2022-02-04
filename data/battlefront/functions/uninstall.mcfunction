#un-init the thousand scoreboard objectives

#FO jetpack
scoreboard objectives remove hoverpackEquipped
scoreboard objectives remove hoverpackFuel
scoreboard objectives remove hoverpackDead
scoreboard objectives remove hoverpackTick
scoreboard objectives remove soundTick
scoreboard objectives remove sound-enabled

#cooldowns
scoreboard objectives remove fortCooldown
scoreboard objectives remove mindCooldown
scoreboard objectives remove jumpCooldown
scoreboard objectives remove quarCooldown
scoreboard objectives remove bcomCooldown
scoreboard objectives remove bfocCooldown
scoreboard objectives remove trunCooldown
scoreboard objectives remove rushCooldown
scoreboard objectives remove seekCooldown
scoreboard objectives remove tranCooldown
scoreboard objectives remove pbatCooldown
scoreboard objectives remove survCooldown
scoreboard objectives remove spinCooldown
scoreboard objectives remove elecCooldown
scoreboard objectives remove weakCooldown
scoreboard objectives remove duelCooldown
scoreboard objectives remove passCooldown
scoreboard objectives remove domiCooldown
scoreboard objectives remove wrisCooldown
scoreboard objectives remove restrCooldown
scoreboard objectives remove helmCooldown
scoreboard objectives remove thermCooldown
scoreboard objectives remove frezCooldown
scoreboard objectives remove insigCooldown
scoreboard objectives remove chokeCooldown
scoreboard objectives remove vibroCooldown
scoreboard objectives remove thrustCooldown
scoreboard objectives remove mineCooldown
scoreboard objectives remove stCooldown
scoreboard objectives remove intelCooldown
scoreboard objectives remove doubCooldown
scoreboard objectives remove pullCooldown

#posts
scoreboard objectives remove postA
scoreboard objectives remove postB
scoreboard objectives remove postC
scoreboard objectives remove postD
scoreboard objectives remove postE
scoreboard objectives remove postReadable

#heroes
scoreboard objectives remove FOhero
scoreboard objectives remove REShero
scoreboard objectives remove REBhero
scoreboard objectives remove EMPhero
scoreboard objectives remove REPhero
scoreboard objectives remove CIShero

#statistic
scoreboard objectives remove jump
scoreboard objectives remove sneak
scoreboard objectives remove sprint
scoreboard objectives remove walk
scoreboard objectives remove clickStick
scoreboard objectives remove clickHover
scoreboard objectives remove useTruncheon
scoreboard objectives remove usePBaton
scoreboard objectives remove useStrike
scoreboard objectives remove useSpin
scoreboard objectives remove defeated
scoreboard objectives remove killedPlayer
scoreboard objectives remove damageTaken

#misc
scoreboard objectives remove helmGlowing
scoreboard objectives remove abilitiesBlocked
scoreboard objectives remove duelDuration
scoreboard objectives remove insigDuration
scoreboard objectives remove chokeDuration
scoreboard objectives remove retribDuration
scoreboard objectives remove bfocDuration
scoreboard objectives remove respawnTime
scoreboard objectives remove respawnTick
scoreboard objectives remove nearGround
scoreboard objectives remove fuelTick
scoreboard objectives remove showDelay

#team
team remove EMP
team remove REB
team remove FO
team remove RES
team remove CIS
team remove REP

#post bars
bossbar remove battlefront:posta
bossbar remove battlefront:postb
bossbar remove battlefront:postc
bossbar remove battlefront:postd
bossbar remove battlefront:poste

#yay!
tellraw @s {"text":"Successfully uninstalled Battlefront and all its assets.","color":"green"}