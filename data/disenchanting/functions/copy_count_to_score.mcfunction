##
 # copy_count_to_score.mcfunction
 # 
 #
 # Created by .
##
execute store result score @s deCount run data get entity @s Item.Count
function disenchanting:score_operation