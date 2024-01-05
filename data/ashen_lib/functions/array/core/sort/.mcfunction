#> ashen_lib:array/core/sort/
# @within function ashen_lib:array/sort/*

# 値の初期化
    data modify storage ashen_lib:temp Array.Desc set value []
    scoreboard players set #Value2 Ashen.Global.Temporary -2147483648
    execute if data storage ashen_lib:api Array[-1] run function ashen_lib:array/core/sort/loop
# 昇順にソート
    function ashen_lib:array/core/sort/ascend/
