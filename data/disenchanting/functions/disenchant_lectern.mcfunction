data merge entity @e[type=minecraft:item,distance=..1,limit=1,sort=nearest,nbt={Item:{id:"minecraft:book"}}] {Age:5999s}
loot spawn ~ ~ ~ loot disenchanting:pages/enchanted_book
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
data remove entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}}},limit=1,distance=..1] Item.tag.RepairCost
particle minecraft:instant_effect ~ ~ ~ 0.125 0.125 0.125 10 100 force @a
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1