# Erase Book or Written Book
data merge entity @e[type=minecraft:item,distance=..1,limit=1,sort=nearest,predicate=disenchanting:disenchanter] {Age:5999s}
# Copy enchantments 
data modify storage disenchanting:original Enchantments append from entity @s Item.tag.Enchantments[]
# Pop Enchanted Book
# loot spawn ~ ~ ~ loot disenchanting:pages/enchanted_book
# Disenchant : Select Enchantment order(0-15)
execute if data block ~ ~ ~ {Page:0} run function disenchanting:pages/0
execute if data block ~ ~ ~ {Page:1} run function disenchanting:pages/1
execute if data block ~ ~ ~ {Page:2} run function disenchanting:pages/2
execute if data block ~ ~ ~ {Page:3} run function disenchanting:pages/3
execute if data block ~ ~ ~ {Page:4} run function disenchanting:pages/4
execute if data block ~ ~ ~ {Page:5} run function disenchanting:pages/5
execute if data block ~ ~ ~ {Page:6} run function disenchanting:pages/6
execute if data block ~ ~ ~ {Page:7} run function disenchanting:pages/7
execute if data block ~ ~ ~ {Page:8} run function disenchanting:pages/8
execute if data block ~ ~ ~ {Page:9} run function disenchanting:pages/9
execute if data block ~ ~ ~ {Page:10} run function disenchanting:pages/10
execute if data block ~ ~ ~ {Page:11} run function disenchanting:pages/11
execute if data block ~ ~ ~ {Page:12} run function disenchanting:pages/12
execute if data block ~ ~ ~ {Page:13} run function disenchanting:pages/13
execute if data block ~ ~ ~ {Page:14} run function disenchanting:pages/14
execute if data block ~ ~ ~ {Page:15} run function disenchanting:pages/15
# Disenchanted Item : Reset RepairCost
data remove entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}}},limit=1,distance=..1] Item.tag.RepairCost
# Remove storage
data remove storage disenchanting:original Enchantments[]
# Effect
particle minecraft:instant_effect ~ ~ ~ 0.125 0.125 0.125 10 100 force @a
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1