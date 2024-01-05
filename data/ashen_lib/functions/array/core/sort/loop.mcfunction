#> ashen_lib:array/core/sort/loop
# @within function
#   ashen_lib:array/core/sort/
#   ashen_lib:array/core/sort/loop

# 最後尾を取得
    execute store result score #Value1 Ashen.Global.Temporary run data get storage ashen_lib:api Array[-1]
# 大小比較をして格納
    execute if score #Value2 Ashen.Global.Temporary < #Value1 Ashen.Global.Temporary run data modify storage ashen_lib:temp Array.Desc append value []
    data modify storage ashen_lib:temp Array.Desc[-1] append value 0
    execute store result storage ashen_lib:temp Array.Desc[-1][-1] int 1 run scoreboard players operation #Value2 Ashen.Global.Temporary = #Value1 Ashen.Global.Temporary
# ループ
    data remove storage ashen_lib:api Array[-1]
    execute if data storage ashen_lib:api Array[-1] run function ashen_lib:array/core/sort/loop