# Erase Book or Written Book
kill @e[type=minecraft:item,distance=..1,limit=1,sort=nearest,predicate=disenchanting:disenchanter,nbt={Item:{Count:1b}}]
execute as @e[type=minecraft:item,distance=..1,limit=1,sort=nearest,predicate=disenchanting:disenchanter,nbt=!{Item:{Count:1b}}] run function disenchanting:copy_count_to_score
# Pop Enchanted Book
loot spawn ~ ~ ~ loot disenchanting:pages/all

# Change Item from Book to Enchanted Book
# data modify entity @s Item.id set value enchanted_book
# Store enchantments to Book
# data modify entity @s Item.tag.StoredEnchantments set from entity @e[type=item,predicate=disenchanting:counterpart,limit=1,distance=..1] Item.tag.Enchantments
# Disenchanted Item : Reset RepairCost
data remove entity @s Item.tag.RepairCost
# Disenchanted Item : Disenchant
data remove entity @s Item.tag.Enchantments
# Effect
particle minecraft:instant_effect ~ ~ ~ 0.125 0.125 0.125 10 100 force @a
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1