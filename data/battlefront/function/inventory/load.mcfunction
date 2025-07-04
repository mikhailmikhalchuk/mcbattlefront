execute store result storage battlefront:inv this.ID int 1 run scoreboard players get @s ID
function battlefront:inventory/loadread with storage battlefront:inv this
execute unless data storage battlefront:inv this.Inventory[-1].components run data modify storage battlefront:inv this.Inventory[-1].components set value {}
function battlefront:inventory/loaditem with storage battlefront:inv this.Inventory[-1]