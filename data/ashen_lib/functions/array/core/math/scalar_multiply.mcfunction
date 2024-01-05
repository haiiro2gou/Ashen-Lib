#> ashen_lib:array/core/math/scalar_multiply
# @within function
#   ashen_lib:array/math/scalar_multiply
#   ashen_lib:array/core/math/scalar_multiply

# 計算/結果代入
    data modify storage ashen_lib:api Array append value -1d
    execute store result score #Temp Ashen.Global.Temporary run data get storage ashen_lib:api CopiedArray[-1] 100
    scoreboard players operation #Temp Ashen.Global.Temporary *= #Mul Ashen.Global.Temporary
    execute store result storage ashen_lib:api Array[-1] double 0.0001 run scoreboard players get #Temp Ashen.Global.Temporary

# 末尾削除
    data remove storage ashen_lib:api CopiedArray[-1]
# 要素がまだあるなら再帰
    execute if data storage ashen_lib:api CopiedArray[0] run function ashen_lib:array/core/math/scalar_multiply