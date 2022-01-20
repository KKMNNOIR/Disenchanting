##
 # score_operation.mcfunction
 # 
 #
 # Created by .
##
scoreboard players remove @s deCount 1
execute store result entity @s Item.Count byte 1 run scoreboard players get @s deCount