#> ashen_lib:array/core/move
# @within function ashen_lib:array/**

scoreboard players remove #Index Ashen.Global.Temporary 1
data modify storage ashen_lib:api Cache append from storage ashen_lib:api Array[-1]
data remove storage ashen_lib:api Array[-1]
execute if score #Index Ashen.Global.Temporary matches 1.. run function ashen_lib:array/core/move