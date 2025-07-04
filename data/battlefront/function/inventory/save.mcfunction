data remove storage battlefront:inv this
execute store result storage battlefront:inv this.ID int 1 run scoreboard players get @s ID
data modify storage battlefront:inv this.Inventory set from entity @s Inventory
function battlefront:inventory/saveupdate with storage battlefront:inventory this