$scoreboard players set #this Slot $(Slot)
execute if score #this Slot matches 0..35 run function battlefront:inventory/loadinventory with storage battlefront:inv this.Inventory[-1]
execute unless score #this Slot matches 0..35 run function battlefront:inventory/loadequipment with storage battlefront:inv this.Inventory[-1]
data remove storage battlefront:inv this.Inventory[-1]
execute unless data storage battlefront:inv this.Inventory[-1].components run data modify storage battlefront:inv this.Inventory[-1].components set value {} 
function battlefront:inventory/loaditem with storage battlefront:inv this.Inventory[-1]