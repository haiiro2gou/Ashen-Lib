#> ashen_lib:array/core/revert
# @within function ashen_lib:array/**

data modify storage ashen_lib:api Array append from storage ashen_lib:api Cache[-1]
data remove storage ashen_lib:api Cache[-1]
execute if data storage ashen_lib:api Cache[0] run function ashen_lib:array/core/revert