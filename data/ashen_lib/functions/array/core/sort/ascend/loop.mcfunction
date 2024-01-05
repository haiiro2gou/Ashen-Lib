#> ashen_lib:array/core/sort/ascend/loop
# @within function
#   ashen_lib:array/core/sort/ascend/
#   ashen_lib:array/core/sort/ascend/loop

# 代入していく
    execute if score #Value1 Ashen.Global.Temporary <= #Value2 Ashen.Global.Temporary run function ashen_lib:array/core/sort/ascend/l
    execute if score #Value2 Ashen.Global.Temporary <= #Value1 Ashen.Global.Temporary run function ashen_lib:array/core/sort/ascend/r
# 末尾の中身がなければ次の配列に
    execute unless data storage ashen_lib:temp Array.Desc[-1][-1] unless data storage ashen_lib:temp Array.Desc[-2][-1] run function ashen_lib:array/core/sort/ascend/shift
# 配列が残っていればループ
    execute if data storage ashen_lib:temp Array.Desc[-1] run function ashen_lib:array/core/sort/ascend/loop
