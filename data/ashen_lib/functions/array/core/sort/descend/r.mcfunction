#> ashen_lib:array/core/sort/descend/r
# @within function ashen_lib:array/core/sort/descend/loop

# 代入
    data modify storage ashen_lib:temp Array.Desc[-1] append from storage ashen_lib:temp Array.Asc[-2][-1]
# 消す
    data remove storage ashen_lib:temp Array.Asc[-2][-1]
# 次に回す
    execute store result score #Value2 Ashen.Global.Temporary run data get storage ashen_lib:temp Array.Asc[-2][-1]
    execute unless data storage ashen_lib:temp Array.Asc[-2][-1] run scoreboard players set #Value2 Ashen.Global.Temporary -2147483648
