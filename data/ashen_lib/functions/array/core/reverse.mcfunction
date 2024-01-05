#> ashen_lib:array/core/reverse
# @within function ashen_lib:array/**

execute store result score #Index Ashen.Global.Temporary if data storage ashen_lib:api Array[]
function ashen_lib:array/core/move
data modify storage ashen_lib:api Array set from storage ashen_lib:api Cache
data remove storage ashen_lib:api Cache
scoreboard players reset #Index Ashen.Global.Temporary