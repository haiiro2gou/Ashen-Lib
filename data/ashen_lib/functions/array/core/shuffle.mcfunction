#> ashen_lib:array/core/shuffle
# @within function ashen_lib:array/**

execute store result score #Index Ashen.Global.Temporary run function ashen_lib:random/
scoreboard players operation #Index Ashen.Global.Temporary %= #ListSize Ashen.Global.Temporary
execute if score #Index Ashen.Global.Temporary matches 1.. run function ashen_lib:array/core/move
data modify storage ashen_lib:api ArrayO append from storage ashen_lib:api Array[-1]
data remove storage ashen_lib:api Array[-1]
data modify storage ashen_lib:api Array append from storage ashen_lib:api Cache[]
data remove storage ashen_lib:api Cache
scoreboard players remove #ListSize Ashen.Global.Temporary 1
execute if score #ListSize Ashen.Global.Temporary matches 1.. run function ashen_lib:array/core/shuffle