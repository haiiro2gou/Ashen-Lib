#> ashen_lib:array/core/sort/ascend/l
# @within function ashen_lib:array/core/sort/ascend/loop

# 代入
    data modify storage ashen_lib:temp Array.Asc[-1] append from storage ashen_lib:temp Array.Desc[-1][-1]
# 消す
    data remove storage ashen_lib:temp Array.Desc[-1][-1]
# 次に回す
    execute store result score #Value1 Ashen.Global.Temporary run data get storage ashen_lib:temp Array.Desc[-1][-1]
    execute unless data storage ashen_lib:temp Array.Desc[-1][-1] run scoreboard players set #Value1 Ashen.Global.Temporary 2147483647
