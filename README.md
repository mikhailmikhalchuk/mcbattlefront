# Battlefront
A Star Wars themed datapack for Minecraft, initially concieved and created in December 2020. Currently in a pre-release state, and only supports version 1.21.6. Older versions can be found in releases.

## Installation
Download or clone the repository, and move it to your save's `datapacks` folder.

## Usage
The datapack currently spans over the 3 eras of the Republic, Rebellion, and Resistance.

- Command posts can be set by standing over the desired area and running `/function battlefront:spawnpost/post<a/b/c/d/e>`.

- Team spawn points can be set by standing over the desired area and running `/function battlefront:setteamspawn/<team>`.

- The position in which players will be teleported to upon death and position in which players will face upon death can be set by standing over the desired area and running `/function battlefront:setdeathspectatearea` and `/function battlefront:setdeathfacingarea`, respectively.

- To change the respawn time, run `/scoreboard players set @a respawnTime <time>`. Note that time is in ticks and not seconds.

- Team values can be changed - by default, values like friendly fire are disabled, but only on install, meaning it can be changed freely.

Issues? Report them on this repository's [issues page](https://github.com/mikhailmikhalchuk/mcbattlefront/issues)!

## To-do
- For lightsaber blocking [tick for shield and remove after time/hits then replace](https://github.com/mikhailmikhalchuk/mcbattlefront/blob/master/data/battlefront/function/tick.mcfunction)

- For Clone Commando [Anti-armor attachment](https://github.com/mikhailmikhalchuk/mcbattlefront/blob/master/data/battlefront/function/classes/enforcer.mcfunction#L38)

- For Wrist Rocket [increase radius](https://github.com/mikhailmikhalchuk/mcbattlefront/blob/master/data/battlefront/function/abilities/wristrocket/wristrockettick.mcfunction#L6) (test different radii and balance accordingly)

- For Heavy class [add sentry ability](https://github.com/mikhailmikhalchuk/mcbattlefront/blob/master/data/battlefront/function/classes/heavy.mcfunction) (minigun w/o the firing delay)

- For Command Post armor stands [add contested bar for when multiple people are in the radius of a command post](https://github.com/mikhailmikhalchuk/mcbattlefront/tree/master/data/battlefront/function/posts) (command posts already stay static and don't gain points for any team when 2+ members of opposing teams are in its radius - this means the detection is there, so utilize it for implementation)

- **Potentially** [standardize under \`hero\` and check team](https://github.com/mikhailmikhalchuk/mcbattlefront/blob/master/data/battlefront/function/install.mcfunction) (check performance hits for this one)

- **Potentially** for Captain Phasma [use for the placeable turrets](https://www.planetminecraft.com/data-pack/automatic-turrets/)

- **Potentially** [give the armor stand the "post" tag](https://github.com/mikhailmikhalchuk/mcbattlefront/blob/master/data/battlefront/function/spawnpost/manager.mcfunction) (not sure what this even means, wrote it down a while ago and forgot - may revisit later)