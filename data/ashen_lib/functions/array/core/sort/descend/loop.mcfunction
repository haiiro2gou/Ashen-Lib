#> ashen_lib:array/core/sort/descend/loop
# @within function
#   ashen_lib:array/core/sort/descend/
#   ashen_lib:array/core/sort/descend/loop

# 代入していく
    execute if score #Value1 Ashen.Global.Temporary >= #Value2 Ashen.Global.Temporary run function ashen_lib:array/core/sort/descend/l
    execute if score #Value2 Ashen.Global.Temporary >= #Value1 Ashen.Global.Temporary run function ashen_lib:array/core/sort/descend/r
# 末尾の中身がなければ次の配列に
    execute unless data storage ashen_lib:temp Array.Asc[-1][-1] unless data storage ashen_lib:temp Array.Asc[-2][-1] run function ashen_lib:array/core/sort/descend/shift
# 配列が残っていればループ
    execute if data storage ashen_lib:temp Array.Asc[-1] run function ashen_lib:array/core/sort/descend/loop
