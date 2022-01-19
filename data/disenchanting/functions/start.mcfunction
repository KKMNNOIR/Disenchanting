# Disenchant on Enchanting Table
execute as @e[type=item,limit=1,nbt={Item:{tag:{Enchantments:[{}]}}}] at @s if block ~ ~-0.75 ~ minecraft:enchanting_table if entity @e[type=item,limit=1,distance=..1,predicate=disenchanting:disenchanter] run function disenchanting:disenchant
# Disenchant on Lectern
execute as @e[type=minecraft:item,nbt={Item:{tag:{Enchantments:[{}]}}},limit=1] at @s if block ~ ~ ~ minecraft:lectern[has_book=true] if entity @e[type=minecraft:item,limit=1,distance=..1,predicate=disenchanting:disenchanter] run function disenchanting:disenchant_lectern