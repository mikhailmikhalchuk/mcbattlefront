# Battlefront
A Star Wars themed datapack for Minecraft, initially concieved and created in December 2020. Currently in a pre-release state, and only supports version 1.18, but will be updated to include older versions as well.

## Installation
Download or clone the repository, and move it to your save's `datapacks` folder.

## Usage
The datapack currently spans over the 3 eras of the Republic, Rebellion, and Resistance.

- Command posts can be set by standing over the desired area and running `/function battlefront:spawnpost/post<a/b/c/d/e>`.

- Team spawn points can be set by standing over the desired area and running `/function battlefront:setteamspawn/<team>`.

- The position in which players will be teleported to upon death and position in which players will face upon death can be set by standing over the desired area and running `/function battlefront:setdeathspectatearea` and `/function battlefront:setdeathfacingarea`, respectively.

- To change the respawn time, run `/scoreboard players set @a respawnTime <time>`. Note that time is in ticks and not seconds.

- Run `/scoreboard players set <player> show-actionbar-cooldown <0|1>` to hide or show the cooldown of the currently selected ability above the hotbar.

Issues? Report them on this repository's [issues page](https://github.com/MikhailMCraft/mcbattlefront/issues)!

## To-do
- For lightsaber blocking [tick for shield and remove after time/hits then replace](https://github.com/MikhailMCraft/mcbattlefront/blob/master/data/battlefront/functions/tick.mcfunction)

- For Clone Commando [Anti-armor attachment](https://github.com/MikhailMCraft/mcbattlefront/blob/master/data/battlefront/functions/classes/enforcer.mcfunction#L38)

- For Wrist Rocket [increase radius](https://github.com/MikhailMCraft/mcbattlefront/blob/master/data/battlefront/functions/abilities/wristrocket/wristrockettick.mcfunction#L6) (test different radii and balance accordingly)

- For Heavy class [add sentry ability](https://github.com/MikhailMCraft/mcbattlefront/blob/master/data/battlefront/functions/classes/heavy.mcfunction) (minigun w/o the firing delay)

- For Command Post armor stands [add contested bar for when multiple people are in the radius of a command post](https://github.com/MikhailMCraft/mcbattlefront/tree/master/data/battlefront/functions/posts) (command posts already stay static and don't gain points for any team when 2+ members of opposing teams are in its radius - this means the detection is there, so utilize it for implementation)

- **Potentially** [standardize under \`hero\` and check team](https://github.com/MikhailMCraft/mcbattlefront/blob/master/data/battlefront/functions/install.mcfunction) (check performance hits for this one)

- **Potentially** for Captain Phasma [use for the placeable turrets](https://www.planetminecraft.com/data-pack/automatic-turrets/)

- **Potentially** [give the armor stand the "post" tag](https://github.com/MikhailMCraft/mcbattlefront/blob/master/data/battlefront/functions/spawnpost/manager.mcfunction) (not sure what this even means, wrote it down a while ago and forgot - may revisit later)