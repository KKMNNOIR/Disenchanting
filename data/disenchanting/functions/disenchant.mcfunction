data modify entity @s Item.id set value enchanted_book
data modify entity @s Item.tag.StoredEnchantments set from entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}}},limit=1,distance=..1] Item.tag.Enchantments
data remove entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}}},limit=1,distance=..1] Item.tag.RepairCost
data remove entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}}},limit=1,distance=..1] Item.tag.Enchantments
particle minecraft:instant_effect ~ ~ ~ 0.125 0.125 0.125 10 100 force @a
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1