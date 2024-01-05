#> ashen_lib:array/core/sort/descend/
# @within function
#   ashen_lib:array/sort/descend
#   ashen_lib:array/core/sort/
#   ashen_lib:array/core/sort/ascend/

# 値を取得
    execute store result score #Value1 Ashen.Global.Temporary run data get storage ashen_lib:temp Array.Asc[-1][-1]
    execute store result score #Value2 Ashen.Global.Temporary run data get storage ashen_lib:temp Array.Asc[-2][-1]
    execute unless data storage ashen_lib:temp Array.Asc[-2][-1] run scoreboard players set #Value2 Ashen.Global.Temporary -2147483648
# 初期化
    data modify storage ashen_lib:temp Array.Desc set value [[]]
# ループを発火
    function ashen_lib:array/core/sort/descend/loop
# 昇順にソート
    execute if data storage ashen_lib:temp Array.Desc[-2] run function ashen_lib:array/core/sort/ascend/
