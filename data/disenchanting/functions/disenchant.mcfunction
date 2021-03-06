# Change Item from Book to Enchanted Book
data modify entity @s Item.id set value enchanted_book
# Store enchantments to Book
data modify entity @s Item.tag.StoredEnchantments set from entity @e[type=item,predicate=disenchanting:counterpart,limit=1,distance=..1] Item.tag.Enchantments
# Disenchanted Item : Reset RepairCost
data remove entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}}},limit=1,distance=..1] Item.tag.RepairCost
# Disenchanted Item : Disenchant
data remove entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}}},limit=1,distance=..1] Item.tag.Enchantments
# Effect
particle minecraft:instant_effect ~ ~ ~ 0.125 0.125 0.125 10 100 force @a
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1