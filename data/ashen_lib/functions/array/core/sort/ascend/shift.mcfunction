#> ashen_lib:array/core/sort/ascend/shift
# @within function ashen_lib:array/core/sort/ascend/loop

# 末尾2つを消す
    data remove storage ashen_lib:temp Array.Desc[-1]
    data remove storage ashen_lib:temp Array.Desc[-1]
# まだ残っていれば値を設定
    execute if data storage ashen_lib:temp Array.Desc[-1][-1] store result score #Value1 Ashen.Global.Temporary run data get storage ashen_lib:temp Array.Desc[-1][-1]
    execute if data storage ashen_lib:temp Array.Desc[-2][-1] store result score #Value2 Ashen.Global.Temporary run data get storage ashen_lib:temp Array.Desc[-2][-1]
    execute if data storage ashen_lib:temp Array.Desc[-1] run data modify storage ashen_lib:temp Array.Asc append value []
