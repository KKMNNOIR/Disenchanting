# data modify entity @e[type=minecraft:item,distance=..1,limit=1,nbt={Item:{id:"minecraft:enchanted_book"}}] Item.tag.StoredEnchantments append from entity @s Item.tag.Enchantments[4]
loot spawn ~ ~ ~ loot disenchanting:pages/4
data remove entity @s Item.tag.Enchantments[4]