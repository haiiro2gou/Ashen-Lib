#> ashen_lib:array/core/sort/ascend/
# @within function
#   ashen_lib:array/sort/ascend
#   ashen_lib:array/core/sort/
#   ashen_lib:array/core/sort/descend/

# 値を取得
    execute store result score #Value1 Ashen.Global.Temporary run data get storage ashen_lib:temp Array.Desc[-1][-1]
    execute store result score #Value2 Ashen.Global.Temporary run data get storage ashen_lib:temp Array.Desc[-2][-1]
    execute unless data storage ashen_lib:temp Array.Desc[-2][-1] run scoreboard players set #Value2 Ashen.Global.Temporary 2147483647
# 初期化
    data modify storage ashen_lib:temp Array.Asc set value [[]]
# ループを発火
    function ashen_lib:array/core/sort/ascend/loop
# 降順にソート
    execute if data storage ashen_lib:temp Array.Asc[1] run function ashen_lib:array/core/sort/descend/
